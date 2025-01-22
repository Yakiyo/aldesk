import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/utils/utils.dart';
import '../data/provider.dart';

class ListTitleSection extends ConsumerWidget {
  final int userId;
  final EnumMediaType type;
  const ListTitleSection({super.key, required this.userId, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(mediaListProvider(userId, type));
    if (!data.hasValue) {
      return const SizedBox.shrink();
    }
    final username = data.value!.user?.name ?? '<unknown>';
    return InkWell(
      child: Text(
        '$username\'s ${type.name.toLowerCase().capitalize()} List',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}