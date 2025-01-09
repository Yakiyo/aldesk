import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/package/package.dart';
import '../../../config/utils/utils.dart';
import '../toast/toast.dart';

class AboutDialogWidget extends ConsumerWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pkg = ref.watch(packageInfoProvider);
    // value should always be present by the time we come to show dialog box
    // as it should be loaded for the side navigation bar, but just in case
    // we keep a shrinked sized box
    if (!pkg.hasValue) {
      return const SizedBox.shrink();
    }
    final value = pkg.requireValue;
    return Dialog(
      child: Container(
        width: 350,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(value.appName.capitalize(),
                    style: Theme.of(context).textTheme.displaySmall),
                Image.asset("assets/logo.png", width: 50, height: 50),
              ],
            ),
            Text("v${value.version}",
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 20),
            Text(
                "Aldesk is an open source anilist client for dekstop."
                "The app does not store any sort of personal data from the user outside of the user's device. "
                "For issues or bug reports, please visit the Github repository.",
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _openLink("https://anilist.co", context);
                  },
                  label: const Text("Anilist"),
                  icon: const Icon(Icons.home_outlined),
                ),
                const SizedBox(width: 5),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _openLink("https://github.com/Yakiyo/aldesk", context);
                  },
                  label: const Text("Github"),
                  icon: const FaIcon(FontAwesomeIcons.codeFork),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _openLink(String url, BuildContext context) async {
    late final Object? error;
    final success = await launchUrl(Uri.parse(url)).catchError((e) {
      error = e;
      return false;
    });
    if (success) return;
    final logger = get<Logger>();
    logger.e('Failed to open link $url', error: error);
    final copied = await Clipboard.setData(ClipboardData(text: url))
        .then((_) => true)
        .catchError((e) {
      logger.e('Failed to copy url to clipboard', error: e);
      return false;
    });
    if (!copied) return;
    displayError("Failed to open url",
        message: "Url $url has been copied to your clipboard. "
            "Please open it in your browser.");
  }
}
