import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/utils/utils.dart';
import '../../core/toast/toast.dart';
import '../../core/widgets/kaomoji.dart';
import '../data/recommendations.dart';

class RecommendationsList extends ConsumerWidget {
  final int id;
  const RecommendationsList({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(mediaRecommendationProvider(id));
    switch (data) {
      case AsyncLoading():
        return const Center(child: KaomojiLoader());
      case AsyncError(:final error, :final stackTrace):
        logger.e("Failed to fetch media characters",
            error: error, stackTrace: stackTrace);
        displayError("Failed to fetch media characters",
            message: error.toString());
        return const Center(child: Icon(Icons.error));
      default:
        break;
    }
    assert(data.hasValue);
    final recommendations = data.value ?? [];
    if (recommendations.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Wrap(
        children: [
          for (final recommendation in recommendations)
            RecommendationTile(rec: recommendation),
        ],
      ),
    );
  }
}

class RecommendationTile extends StatefulWidget {
  final FragmentRecommendationNode rec;
  const RecommendationTile({super.key, required this.rec});
  static const _tileWidth = 180.0;

  @override
  State<RecommendationTile> createState() => _RecommendationTileState();
}

class _RecommendationTileState extends State<RecommendationTile> {
  bool _isHovering = false;

  String get _rating {
    final r = widget.rec.rating ?? 0;
    if (r < 0) {
      return "-$r";
    } else if (r > 0) {
      return "+$r";
    } else {
      return "0";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) => setState(() => _isHovering = value),
      child: Container(
        width: RecommendationTile._tileWidth,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              if (widget.rec.mediaRecommendation?.coverImage?.large != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    widget.rec.mediaRecommendation!.coverImage!.large!,
                    width: RecommendationTile._tileWidth,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                )
              else
                Container(
                  height: 180,
                  width: RecommendationTile._tileWidth,
                  color: Theme.of(context).colorScheme.secondary,
                  child: const Center(
                    child: Icon(Icons.image_not_supported),
                  ),
                ),
              if (_isHovering)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.setOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    spacing: 2,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const IconButton(
                          tooltip: "Not supported yet",
                          onPressed: null,
                          icon: Icon(Icons.thumb_up, color: Colors.white)),
                      const IconButton(
                          tooltip: "Not supported yet",
                          onPressed: null,
                          icon: Icon(Icons.thumb_down, color: Colors.white)),
                      Text(_rating,
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(width: 2)
                    ],
                  ),
                )
            ]),
            Text(
              widget.rec.mediaRecommendation?.title?.userPreferred ??
                  "<unknown>",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
