import 'package:aldesk/ui/media/data/media_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/utils/utils.dart';
import '../../core/toast/toast.dart';
import '../data/utils.dart';
import 'form.dart';

const _coverImageWidth = 215.0;

/// Displays the page's banner image, cover image, title, and description section
class HeroSection extends StatelessWidget {
  final int mediaId;
  final String? banner;
  final String? coverImage;
  final String? title;
  final String? description;
  final String? siteUrl;
  const HeroSection(
      {super.key,
      this.banner,
      this.coverImage,
      this.title,
      this.description,
      this.siteUrl,
      required this.mediaId});

  @override
  Widget build(BuildContext context) {
    final bannerBoxHeight = banner != null ? 300.0 : 200.0;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (banner != null)
                Image.network(
                  banner!,
                  height: 300,
                  width: double.infinity,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                )
              else
                const SizedBox(height: 300),
              Container(
                constraints: const BoxConstraints(
                    minHeight: 200, maxHeight: double.infinity),
                padding: const EdgeInsets.only(
                    left: _coverImageWidth + 20 * 2,
                    right: 20,
                    top: 20,
                    bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title ?? "",
                        style: Theme.of(context).textTheme.displaySmall),
                    Container(
                        constraints: const BoxConstraints(minHeight: 100),
                        child: MarkdownBody(data: sanitizeMd(description)))
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 20,
              top: bannerBoxHeight / 2 - 50,
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (coverImage != null)
                    Image.network(coverImage!, width: _coverImageWidth)
                  else
                    const SizedBox(width: _coverImageWidth, height: 300),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => MediaListForm(mediaId: mediaId),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: ListEntryEditorButton(mediaId: mediaId),
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
              right: 20,
              top: 20,
              child: IconButton(
                  tooltip: "Open in AniList",
                  onPressed: () {
                    launchUrl(Uri.parse(siteUrl ?? "https://anilist.co"));
                  },
                  icon: const FaIcon(FontAwesomeIcons.link, size: 15))),
        ],
      ),
    );
  }
}

class ListEntryEditorButton extends ConsumerWidget {
  final int mediaId;
  const ListEntryEditorButton({super.key, required this.mediaId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(mediaListStatusProvider(mediaId));
    switch (status) {
      case AsyncData(:final value):
        return Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_drop_down, color: Colors.white),
            Text(value,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white)),
          ],
        );
      case AsyncError(:final error, :final stackTrace):
        logger.e("Error when fetching list status",
            error: error, stackTrace: stackTrace);
        displayError("Error when fetching list status", context: context);
        return const Icon(Icons.error, color: Colors.white);
      default:
        return const CircularProgressIndicator(
            color: Colors.white, strokeWidth: 3);
    }
  }
}
