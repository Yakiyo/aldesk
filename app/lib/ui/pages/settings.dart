import 'package:aldesk/core/utils/misc.dart';
import 'package:aldesk/ui/components/misc/kaomoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/token.dart';
import '../../core/utils/get.dart';
import '../components/layout/my_scaffold.dart';
import '../themes/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
        body: Padding(
      padding: EdgeInsets.all(15.0),
      child: SettingsPageBody(),
    ));
  }
}

class SettingsPageBody extends ConsumerWidget {
  const SettingsPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(authUserProvider);

    if (!value.hasValue) {
      return const Center(child: KaomojiLoader());
    }
    final token = ref.watch(tokenProvider)!;
    final theme = ref.watch(themeModeProvider);
    final viewer = value.asData!.value;
    final style = DefaultTextStyle.of(context).style;
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Account",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Divider(),
          RichText(
              text: TextSpan(style: style, children: [
            const TextSpan(text: "Logged in as "),
            TextSpan(
                text: viewer.name,
                style: TextStyle(color: Theme.of(context).colorScheme.primary)),
            TextSpan(text: " (ID: ${viewer.id})"),
          ])),
          const Text("Authentication token info: "),
          RichText(
            text: TextSpan(style: style, children: [
              const TextSpan(text: "Issued at: "),
              TextSpan(
                  text: "${token.iat.day}/${token.iat.month}/${token.iat.year}",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
            ]),
          ),
          RichText(
              text: TextSpan(style: style, children: [
            const TextSpan(text: "Expires at: "),
            TextSpan(
                text: "${token.exp.day}/${token.exp.month}/${token.exp.year}",
                style: TextStyle(color: Theme.of(context).colorScheme.primary))
          ])),
          ElevatedButton(
            onPressed: () {
              pref.remove("token");
              ref.invalidate(tokenProvider);
            },
            child: const Text("Logout"),
          ),
          Text(
            "Preference",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Divider(),
          const Text(
              "Change ur primary color by pressing one of the boxes below"),
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (final color in colors)
                InkWell(
                  onTap: () {
                    updatePrimary(color, ref);
                  },
                  splashColor: color,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: color,
                  ),
                )
            ],
          ),
          const Text("App Theme"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final mode in ThemeMode.values)
                ListTile(
                  dense: true,
                  leading: Radio(
                    value: mode,
                    groupValue: theme,
                    onChanged: (value) {
                      if (value == null) return;
                      updateTheme(value, ref);
                    },
                  ),
                  title: Text(mode.name.capitalize()),
                ),
            ],
          )
        ],
      ),
    );
  }
}

final colors = [
  Colors.blue,
  Colors.lightBlue,
  Colors.green,
  Colors.lightGreen,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.indigo,
];
