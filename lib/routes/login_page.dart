import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const _clientId = "20687";
final Uri _url = Uri.parse(
    "https://anilist.co/api/v2/oauth/authorize?client_id=$_clientId&response_type=token");

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _tokenController = TextEditingController();

  String? _errorText;

  void _handleLogin(TextEditingController controller, BuildContext context) {
    final token = controller.text;
    if (token.isEmpty) {
      setState(() {
        _errorText = "Token cannot be empty";
      });
    } else if (_errorText != null) {
      setState(() {
        _errorText = null;
      });
    }
    final db = Hive.box<String>("db");
    db.put("token", token);
    context.go("/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // The logo on top
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                  height: 130,
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      color: Colors.blue[900],
                      child: Image.asset("images/anilist_long_text.png"))),
            ),
            const SizedBox(
              height: 20,
            ),

            // The input field for the token
            SizedBox(
              width: 450,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Paste the token received from anilist",
                    errorText: _errorText,
                    border: const OutlineInputBorder()),
                controller: _tokenController,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // The two buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.blueAccent[400],
                    child: TextButton(
                      onPressed: () => {
                        launchUrl(_url).catchError((error) {
                          /**
                           * When launching browser fails, copy url to clipboard and
                           * ask user to manually open the url by showing an alert box
                           */
                          showDialog(
                            // ignore: use_build_context_synchronously
                            context: context,
                            builder: (context) {
                              Clipboard.setData(
                                  ClipboardData(text: _url.toString()));
                              return const ErrorDialog(
                                  error: Text(
                                "Unable to open browser due to unexpected error.\n"
                                "Manually open the url to get the token. Url has been copied to clipboard.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ));
                            },
                          );
                          return true;
                        }),
                      },
                      child: const Text(
                        "Get token",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.blueAccent[400],
                    child: TextButton(
                      onPressed: () => _handleLogin(_tokenController, context),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "N.B: Aldesk is not affiliated nor owned by Anilist but rather a community maintained product.",
              style: TextStyle(color: Colors.grey[600], fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ErrorDialog extends StatelessWidget {
  final Text error;
  const ErrorDialog({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[300],
      content: SizedBox(
        height: 60,
        child: Container(alignment: Alignment.center, child: error),
      ),
    );
  }
}
