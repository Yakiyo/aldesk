import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/filters.dart';
import '../data/provider.dart';
import '../data/sort.dart';
import 'filter_fields.dart';

class FilterBar extends ConsumerStatefulWidget {
  final int userId;
  final EnumMediaType type;
  const FilterBar({super.key, required this.userId, required this.type});

  @override
  ConsumerState<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends ConsumerState<FilterBar> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final filters = ref.watch(listFilterProvider);
    final filterNotifer = ref.watch(listFilterProvider.notifier);
    final sortType = ref.watch(mediaListSortProvider);
    final sortNotifier = ref.watch(mediaListSortProvider.notifier);
    final lists =
        ref.watch(listNamesProvider(widget.userId, widget.type)).valueOrNull ??
            [];

    return SingleChildScrollView(
      child: SizedBox(
        width: 200,
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              // filter items by a search query
              QueryField(filters: filters, filterNotifer: filterNotifer),
              // only show a specific list or all
              const Text('Lists'),
              ListFilterButtons(filterNotifer: filterNotifer, lists: lists),
              // sort items by a specific field
              const Text('Filters'),
              FormatField(type: widget.type),
              // TODO: add genre filter support
              StatusField(type: widget.type),
              // sort list items
              const Text('Sort'),
              SortField(sortType: sortType, sortNotifier: sortNotifier),
            ],
          ),
        ),
      ),
    );
  }
}

class SortField extends StatelessWidget {
  const SortField({
    super.key,
    required this.sortType,
    required this.sortNotifier,
  });

  final ListSort sortType;
  final MediaListSort sortNotifier;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
        decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            hoverColor: Theme.of(context).colorScheme.secondary,
            fillColor: Theme.of(context).colorScheme.secondary),
        initialValue: sortType,
        name: 'sort',
        items: [
          for (final sort in ListSort.values)
            DropdownMenuItem(
              value: sort,
              child: Text(listSortStr(sort)),
            )
        ],
        onChanged: (value) {
          sortNotifier.updateMode(value ?? sortType);
        });
  }
}

class QueryField extends StatelessWidget {
  const QueryField({
    super.key,
    required this.filters,
    required this.filterNotifer,
  });

  final ListFilterValues filters;
  final ListFilter filterNotifer;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'query',
      initialValue: filters.query,
      onChanged: (value) {
        filterNotifer.updateQuery(value);
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search, size: 16),
          hintText: 'Filter',
          border: InputBorder.none,
          filled: true,
          hoverColor: Theme.of(context).colorScheme.secondary,
          fillColor: Theme.of(context).colorScheme.secondary),
    );
  }
}

class ListFilterButtons extends StatelessWidget {
  const ListFilterButtons({
    super.key,
    required this.filterNotifer,
    required this.lists,
  });

  final ListFilter filterNotifer;
  final List<String> lists;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 1,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          dense: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: const Text('All'),
          onTap: () => filterNotifer.updateList(null),
        ),
        for (final list in lists)
          ListTile(
            dense: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(list),
            onTap: () => filterNotifer.updateList(list),
          ),
      ],
    );
  }
}
