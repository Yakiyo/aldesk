import 'package:aldesk/utils/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

// TODO: set this at compile time and also remove this application later on
const _clientId = "20687";
final Uri _url = Uri.parse(
    "https://anilist.co/api/v2/oauth/authorize?client_id=$_clientId&response_type=token");

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final imageChild = Expanded(
        flex: 1,
        child: SizedBox.expand(
          child: Container(
              color: Colors.blue[300],
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset('assets/images/anilist_long_text.png'),
              )),
        ));

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SizedBox.expand(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageChild,
            const Expanded(flex: 1, child: LoginForm()),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Welcome to ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 30, color: Colors.black)),
                TextSpan(
                    text: "Aldesk",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              ])),
              const SizedBox(height: 20),
              TextFormField(
                autofocus: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: "Provide your token here",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                  ),
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                obscureText: true,
                validator: (value) => isValidToken(value)
                    ? null
                    : 'Invalid value. Must be a non-empty token that has not expired',
              ),
              Align(
                  alignment: Alignment.centerRight, child: _urlButton(context)),
              _loginButton(context),
              const SizedBox(height: 10),
              Text(
                "N.B: Aldesk is not affiliated with Anilist. It is a community built app. "
                "We do not collect any data from your usage.",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _urlButton(BuildContext context) {
    return TextButton(
        onPressed: () async {
          late final bool launched;
          try {
            launched = await launchUrl(_url);
          } catch (_) {
            launched = false;
          }
          if (launched) return;
          Clipboard.setData(ClipboardData(text: _url.toString()));
          toastification.show(
              // ignore: use_build_context_synchronously
              context: context,
              type: ToastificationType.error,
              style: ToastificationStyle.flat,
              alignment: Alignment.bottomRight,
              title: const Text("Failed to launch URL"),
              description: const Text(
                  "Url has been copied to clipboard. Please open it manually in your browser"),
              autoCloseDuration: const Duration(seconds: 2));
        },
        child: const Text(
          "Get Token",
          style: TextStyle(color: Colors.lightBlue),
        ));
  }

  Widget _loginButton(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!_formKey.currentState!.validate()) return;
        toastification.show(
            context: context,
            type: ToastificationType.success,
            style: ToastificationStyle.flat,
            alignment: Alignment.bottomRight,
            title: const Text("Login Successful"),
            autoCloseDuration: const Duration(seconds: 2));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "Login",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
