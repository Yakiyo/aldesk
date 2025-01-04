import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../data/markdown.dart';

const _coverImageWidth = 215.0;

/// Displays the page's banner image, cover image, title, and description section
class HeroSection extends StatelessWidget {
  final String? banner;
  final String? coverImage;
  final String? title;
  final String? description;
  const HeroSection(
      {super.key, this.banner, this.coverImage, this.title, this.description});

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
              Padding(
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
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Edit List Entry",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
