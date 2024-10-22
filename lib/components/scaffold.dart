import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

import '../util/colors.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  const MyScaffold({super.key, required this.body});

  Widget _appBarPage(String name, String path, BuildContext context) {
    return GestureDetector(
      // TODO: implement the pages
      onTap: () => {}, // context.go(path),
      child: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        leadingWidth: MediaQuery.of(context).size.width,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset("images/anilist.png")),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _appBarPage("Profile", "/profile", context),
                    const SizedBox(
                      width: 25,
                    ),
                    _appBarPage("Anime List", "/animelist", context),
                    const SizedBox(
                      width: 25,
                    ),
                    _appBarPage("Manga List", "/mangalist", context),
                  ],
                ),
              ),

              // TODO: change this with maybe user profile?
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 80,
                ),
              )
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}
