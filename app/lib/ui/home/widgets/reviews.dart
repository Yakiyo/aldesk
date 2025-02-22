import 'package:aldesk/config/routing/extension.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

import '../../../config/routing/routes.dart';

class ReviewListView extends StatelessWidget {
  final List<FragmentReview> reviews;
  const ReviewListView({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 10),
        itemCount: reviews.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ReviewEntry(review: review);
        },
      ),
    );
  }
}

class ReviewEntry extends StatelessWidget {
  final FragmentReview review;
  const ReviewEntry({super.key, required this.review});

  String? get _coverImage => review.media?.coverImage?.large;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.to(Routes.reviewsWithId(review.id));
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        color: Theme.of(context).colorScheme.secondary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // left side image
            if (_coverImage != null)
              Image.network(
                _coverImage!,
                width: 120,
                height: 210,
                fit: BoxFit.cover,
              ),
            if (_coverImage == null) const SizedBox(width: 210, height: 190),
            // middle side of the body containing review title and summary
            Container(
              padding: const EdgeInsets.all(10),
              width: 220,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Review of ${review.media?.title?.userPreferred ?? "<unknown>"} by ${review.user?.name ?? "<unknown>"}",
                      maxLines: 3),
                  const SizedBox(height: 5),
                  Text(
                    review.summary ?? "<no summary>",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    softWrap: true,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                  // number of up and down votes of the review
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${review.rating ?? 0}"),
                          const Icon(Icons.thumb_up, size: 16),
                          const Icon(Icons.thumb_down, size: 16),
                          Text(
                              "${(review.ratingAmount ?? review.rating ?? 0) - (review.rating ?? 0)}"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
