import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routing/routes.dart';
import '../../../config/utils/extensions.dart';

class Relations extends StatefulWidget {
  final List<QueryMediaMediarelationsedges> relations;
  const Relations({super.key, required this.relations});

  @override
  State<Relations> createState() => _RelationsState();
}

class _RelationsState extends State<Relations> {
  final _controller = ScrollController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.relations.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 150,
        child: Scrollbar(
          controller: _controller,
          child: ListView.builder(
            controller: _controller,
            itemCount: widget.relations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final relation = widget.relations[index];
              return RelationMediaTile(relation: relation);
            },
          ),
        ),
      ),
    );
  }
}

class RelationMediaTile extends StatelessWidget {
  const RelationMediaTile({super.key, required this.relation});

  final QueryMediaMediarelationsedges relation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () => context.push(Routes.mediaWithId(relation.node!.id)),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 10),
        clipBehavior: Clip.hardEdge,
        width: 300,
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (relation.node?.coverImage?.large != null)
              Image.network(
                relation.node!.coverImage!.large!,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              )
            else
              const SizedBox(
                width: 100,
                height: 150,
                child: Center(
                  child: Icon(Icons.image_not_supported_outlined),
                ),
              ),
            Expanded(
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(
                      (relation.relationType?.name ?? "OTHER")
                          .split("_")
                          .map((e) => e.toLowerCase().capitalize())
                          .join(" "),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      )),
                  Text(
                    relation.node?.title?.userPreferred ?? "",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "${relation.node?.format?.name ?? ""}"
                        " - "
                        "${(relation.node?.status?.name ?? "").split("_").map((e) => e.toLowerCase().capitalize()).join(" ")}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
