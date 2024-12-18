import 'package:aldesk/ui/components/utilities/my_future_builder.dart';
import 'package:anilist/anilist.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/misc.dart';
import '../../core/theme.dart';
import '../components/layout/fab.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tm = get<ThemeManager>();
    final userF = viewer();
    return Scaffold(
        floatingActionButton: const Fab(),
        floatingActionButtonLocation: ExpandableFab.location,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(20),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Preference",
                    style: Theme.of(context).textTheme.displaySmall),
                const Divider(),
                const Text("App Theme"),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final mode in ThemeMode.values)
                      InkWell(
                        onTap: () {
                          tm.modeNotifier.value = mode;
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: switch (mode) {
                                ThemeMode.system => Colors.grey,
                                ThemeMode.light =>
                                  Themes.light.scaffoldBackgroundColor,
                                ThemeMode.dark =>
                                  Themes.dark.scaffoldBackgroundColor,
                              },
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              mode.name.capitalize(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: switch (mode) {
                                    ThemeMode.system => Colors.black,
                                    ThemeMode.light => Colors.black,
                                    ThemeMode.dark => Colors.grey,
                                  }),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                const SizedBox(height: 40),
                Text("Account",
                    style: Theme.of(context).textTheme.displaySmall),
                const Divider(),
                MyFutureBuilder(
                  future: userF,
                  builder: (user) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  const TextSpan(text: "Logged in as "),
                                  TextSpan(
                                      text: user.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlue)),
                                  WidgetSpan(
                                      child: IconButton(
                                          splashRadius: 1,
                                          tooltip: "Open in browser",
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          splashColor: Colors.transparent,
                                          alignment: Alignment.bottomLeft,
                                          onPressed: () {
                                            launchUrlString(
                                                "https://anilist.co/user/${user.id}");
                                          },
                                          iconSize: 15,
                                          icon: const Icon(
                                              Icons.open_in_new_sharp)))
                                ])),
                        const SizedBox(height: 20),
                        Text.rich(TextSpan(children: [
                          const TextSpan(text: "Token expires on: (MM/DD/YY) "),
                          TextSpan(
                              text: _getTokenExpireDate(),
                              style: const TextStyle(color: Colors.orange))
                        ])),
                        const SizedBox(height: 20),
                        TextButton.icon(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.lightBlue),
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {
                            get<Storage>().token = null;
                            context.go("/login");
                          },
                          label: const Text("Logout from app"),
                          icon: const Icon(Icons.logout),
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }

  String _getTokenExpireDate() {
    final token = get<Storage>().token;
    if (token == null) return "";
    final payload = JWT.tryDecode(token)?.payload as Map<dynamic, dynamic>?;
    if (payload == null || !payload.containsKey("exp")) {
      return "";
    }

    final exp = DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000);
    return "${exp.month}/${exp.day}/${"${exp.year}".substring(2)}";
  }
}
