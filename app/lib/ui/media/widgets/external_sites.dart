import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/utils/utils.dart';

class ExternalSiteLinks extends StatelessWidget {
  final List<QueryMediaMediaexternalLinks> sites;
  const ExternalSiteLinks({super.key, required this.sites});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          for (final site in sites)
            ActionChip(
              tooltip: site.type?.name.toLowerCase().capitalize(),
              color: site.color != null
                  ? WidgetStatePropertyAll(fromHex(site.color!))
                  : WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.secondary),
              avatar: site.icon != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(site.icon!),
                    )
                  : null,
              label: Text(
                "${site.site} ${site.language != null ? '(${site.language})' : ""}",
                style:
                    TextStyle(color: site.color != null ? Colors.white : null),
              ),
              onPressed: () => launchUrl(Uri.parse(site.url!)),
            ),
        ],
      ),
    );
  }
}

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
