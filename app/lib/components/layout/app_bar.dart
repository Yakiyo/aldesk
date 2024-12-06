import 'package:aldesk/utils/assets.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  late final Future<Result<FragmentUserMin, Error>> user;

  @override
  void initState() {
    user = viewer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.aldeskLogo,
              fit: BoxFit.cover,
              height: kToolbarHeight - 5,
            ),
            FutureBuilder(
              future: user,
              builder: (context, snapshot) {
                const box = SizedBox.square(dimension: kToolbarHeight - 5);
                if (!snapshot.hasData) {
                  return box;
                }
                final data = snapshot.data!;
                if (data.isErr()) return box;
                final user = data.unwrap();
                return AvatarSection(avatarUrl: user.avatar!.large!);
              },
            )
          ],
        ),
      ),
    );
  }
}

class AvatarSection extends StatefulWidget {
  final String avatarUrl;
  const AvatarSection({super.key, required this.avatarUrl});

  @override
  State<AvatarSection> createState() => _AvatarSectionState();
}

class _AvatarSectionState extends State<AvatarSection> {
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  Widget _overlayButtons(String title, String location, IconData icon,
      void Function(String) onPressed,
      [double size = 15]) {
    return TextButton(
        onPressed: () {
          _overlayEntry?.remove();
          _overlayEntry = null;
          onPressed(location);
        },
        child: Row(
          children: [
            FaIcon(
              icon,
              color: Theme.of(context).textTheme.displayMedium?.color,
              size: size,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: size),
            ),
          ],
        ));
  }

  void _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    const cardWidth = 160.0;
    _overlayEntry = _overlayEntryBuilder(offset, size, cardWidth);
  }

  OverlayEntry _overlayEntryBuilder(
      Offset offset, Size size, double cardWidth) {
    // ignore: prefer_function_declarations_over_variables
    final onPressed = (String location) => context.push(location);
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          top: kToolbarHeight,
          left: offset.dx + size.width / 2 - (cardWidth + 20 * 2) / 2,
          child: Card(
            color: Theme.of(context).colorScheme.primary,
            elevation: 10,
            child: SizedBox(
              width: cardWidth + 20 * 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _overlayButtons("Profile", "/profile",
                            FontAwesomeIcons.solidUser, onPressed),
                        _overlayButtons("Notifications", "/notifications",
                            FontAwesomeIcons.solidEnvelope, onPressed),
                        _overlayButtons("Settings", "/settings",
                            FontAwesomeIcons.gear, onPressed),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Row(
                      children: [
                        _overlayButtons(
                            "Github",
                            "https://github.com/Yakiyo/aldesk",
                            FontAwesomeIcons.github,
                            (location) => launchUrlString(location),
                            10),
                        _overlayButtons(
                            "Developer",
                            "https://anilist.co/user/Yakiyo",
                            FontAwesomeIcons.solidUser,
                            (location) => launchUrlString(location),
                            10),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void toggleOverlay(bool value) {
    if (value) {
      _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onFocusChange: print,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // onHover: toggleOverlay,
      onTap: () => toggleOverlay(_overlayEntry == null),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundImage: NetworkImage(widget.avatarUrl),
      ),
    );
  }
}
