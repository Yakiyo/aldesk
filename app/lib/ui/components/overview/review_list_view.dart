import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewListView extends StatelessWidget {
  final List<FragmentReview> reviews;
  const ReviewListView({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Recent Reviews",
                style: Theme.of(context).textTheme.displaySmall),
            IconButton(
              onPressed: () {
                context.go("/reviews");
              },
              icon: const Icon(Icons.open_in_new),
            )
          ],
        ),
        SizedBox(
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
        )
      ],
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
        // TODO: implement this page
        context.go("/review/${review.id}");
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        color: Theme.of(context).colorScheme.secondary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_coverImage != null)
              Image.network(
                _coverImage!,
                width: 120,
                height: 210,
                fit: BoxFit.cover,
              ),
            if (_coverImage == null) const SizedBox(width: 210, height: 190),
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

// class _ReviewEntry extends StatelessWidget {
//   final FragmentReview review;
//   const _ReviewEntry({required this.review});

//   String? get _bannerImage => review.media?.bannerImage;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         decoration: BoxDecoration(
//           image: _bannerImage != null
//               ? DecorationImage(
//                   image: NetworkImage(_bannerImage ?? ""), fit: BoxFit.cover)
//               : null,
//         ),
//         width: 210,
//         height: 190,
//         child: ClipRRect(
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                       "Review of ${review.media?.title?.userPreferred ?? "<unknown>"}",
//                       maxLines: 2),
//                   Text("By ${review.user?.name ?? "<unknown>"}"),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
