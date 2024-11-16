import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationFAB extends StatefulWidget {
  const NavigationFAB({super.key});

  @override
  State<NavigationFAB> createState() => _NavigationFABState();
}

class _NavigationFABState extends State<NavigationFAB> {
  bool _isOpen = false;

  void _changeView() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AnimatedCrossFade(
        firstChild: Padding(
          padding: const EdgeInsets.all(2.0),
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF152232),
            onPressed: () => _changeView(),
            heroTag: null,
            child: const Icon(
              Icons.menu,
              color: Colors.cyan,
            ),
          ),
        ),
        secondChild: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SizedBox(
            width: 200,
            height: 200,
            child: FloatingActionButton(
              backgroundColor: const Color(0xFF152232),
              onPressed: () => _changeView(),
              heroTag: null,
              child: QuickMenu(
                onPressed: _changeView,
              ),
            ),
          ),
        ),
        crossFadeState:
            _isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 175),
      ),
    );
  }
}

class QuickMenu extends StatelessWidget {
  final void Function() onPressed;
  const QuickMenu({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        for (final path in paths)
          Column(
            children: [
              IconButton(
                hoverColor: Colors.grey.withOpacity(0.1),
                icon: Icon(path[2], color: Colors.grey),
                onPressed: () => context.go(path[1]),
              ),
              Text(
                path[0],
                style: const TextStyle(color: Colors.grey, fontSize: 10),
              )
            ],
          ),
        Column(
          children: [
            IconButton(
              hoverColor: Colors.grey.withOpacity(0.1),
              icon: const Icon(Icons.close, color: Colors.grey),
              onPressed: onPressed,
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ],
    );
  }
}

const List<List<dynamic>> paths = [
  ["Home", "/", Icons.home],
  ["Anime List", "/animelist", Icons.play_arrow_rounded],
  ["Manga List", "/mangalist", Icons.menu_book_rounded],
  ["Forums", "/forums", Icons.chat_bubble_rounded],
  ["Profile", "/profile", Icons.account_box_rounded],
  ["Notifications", "/notifications", Icons.message],
  ["Settings", "/settings", Icons.settings],
  ["Search", "/search", Icons.search]
];
