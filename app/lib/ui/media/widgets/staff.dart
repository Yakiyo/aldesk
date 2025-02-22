import 'package:aldesk/config/routing/extension.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/routing/routes.dart';
import '../../../config/utils/utils.dart';
import '../../core/toast/toast.dart';
import '../../core/widgets/kaomoji.dart';
import '../data/staff.dart';

const _tileHeight = 90.0;
const _tileWidth = 420.0;
const _tileGap = 10.0;
const _imageWidth = 60.0;

class StaffList extends ConsumerWidget {
  final int id;
  const StaffList({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(mediaStaffProvider(id));
    switch (data) {
      case AsyncLoading():
        return const Center(child: KaomojiLoader());
      case AsyncError(:final error, :final stackTrace):
        logger.e("Failed to fetch media staffs",
            error: error, stackTrace: stackTrace);
        displayError("Failed to fetch media staffs", message: error.toString());
        return const Center(child: Icon(Icons.error));
      default:
        break;
    }
    assert(data.hasValue);
    final staffs = data.value ?? [];
    if (staffs.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: _tileHeight * 3 + _tileGap * 2,
        child: GridView.count(
          mainAxisSpacing: _tileGap,
          crossAxisSpacing: _tileGap,
          crossAxisCount: 3,
          childAspectRatio: _tileHeight / _tileWidth,
          scrollDirection: Axis.horizontal,
          children: [
            for (final staff in staffs) StaffTile(staff: staff),
          ],
        ),
      ),
    );
  }
}

class StaffTile extends StatelessWidget {
  final FragmentStaffEdge staff;
  const StaffTile({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        assert(staff.node?.id != null);
        context.to(Routes.staffWithId(staff.node!.id));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(5),
        ),
        clipBehavior: Clip.hardEdge,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            if (staff.node?.image?.large != null)
              Image.network(
                staff.node!.image!.large!,
                width: _imageWidth,
                height: _tileHeight,
                fit: BoxFit.cover,
              )
            else
              const SizedBox(width: _imageWidth),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      staff.node?.name?.userPreferred ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      staff.role ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
