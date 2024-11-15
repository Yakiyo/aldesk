import 'package:anilist/anilist.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minlog/minlog.dart';
import 'package:url_launcher/url_launcher.dart';
import '../util/colors.dart';
import '../components/navigation_fab.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _exp = "";
  String _username = "";
  String _id = "";
  String _avatar = "";

  @override
  void initState() {
    _userInfo().then((_) => setState(() {}));
    super.initState();
  }

  Future<void> _userInfo() async {
    final db = Hive.box<String>("db");
    final tokenStr = db.get("token");
    assert(tokenStr != null, "token is missing when it shouldn't ????");

    final jwt = JWT.decode(tokenStr!);

    // expire date
    final exp = DateTime.fromMillisecondsSinceEpoch(jwt.payload["exp"] * 1000);

    final al = GetIt.I.get<AnilistClient>();
    final Map<String, String> user = (await al.currentUser()).map((x) {
      return {
        "username": x.name,
        "id": "${x.id}",
        "avatar": x.avatar?.large ?? "",
      };
    }).unwrapOr({
      "username": "??",
      "id": "??",
      "avatar": "??",
      "failed": "",
    });

    _exp = "${exp.day}/${exp.month}/${exp.year % 100}";

    if (user.containsKey("failed")) return;
    _username = user['username']!;
    _avatar = user['avatar']!;
    _id = user['id']!;
  }

  void _logout() {
    final db = Hive.box<String>("db");
    debug("logging out. deleting token");
    db.delete("token").then((_) => debug("token deleted"));
    debug("removing anilist client singleton");
    GetIt.I.unregister<AnilistClient>();
    context.go("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const NavigationFAB(),
      backgroundColor: colorBg,
      body: Center(
        child: Container(
          color: colorPrimary,
          width: MediaQuery.of(context).size.width * 0.8,
          // height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(40),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Account",
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    _avatar,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(text: "Logged in as "),
                    TextSpan(
                        text: _username,
                        style: const TextStyle(color: Colors.lightBlue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => launchUrl(
                              Uri.parse("https://anilist.co/user/$_id"))),
                  ]),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(text: "Your tokin will expire on "),
                    TextSpan(
                        text: _exp, style: TextStyle(color: Colors.orange[400]))
                  ]),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
                      foregroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: _logout,
                  child: const Text("Logout"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
