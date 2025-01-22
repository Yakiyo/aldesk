import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

import '../data/filters.dart';

class FormatField extends ConsumerStatefulWidget {
  const FormatField({
    super.key,
    required this.type,
  });

  final EnumMediaType type;

  @override
  ConsumerState<FormatField> createState() => _FormatFieldState();
}

class _FormatFieldState extends ConsumerState<FormatField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final format =
        ref.watch(listFilterProvider.select((value) => value.format));
    final isSelected = format != null;
    return DropdownMenu<EnumMediaFormat?>(
      controller: _controller,
      width: 200,
      hintText: 'Format',
      initialSelection: format,
      enableSearch: false,
      onSelected: (value) =>
          ref.read(listFilterProvider.notifier).updateFormat(value),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary,
        border: InputBorder.none,
      ),
      trailingIcon: isSelected
          ? InkWell(
              child: const Icon(Icons.clear),
              onTap: () {
                ref.read(listFilterProvider.notifier).updateFormat(null);
                _controller.clear();
              },
            )
          : null,
      dropdownMenuEntries: [
        for (final fmt in formats(widget.type))
          DropdownMenuEntry(
            value: fmt,
            label: mediaFormatStr(fmt),
          ),
      ],
      menuStyle: MenuStyle(
        elevation: const WidgetStatePropertyAll(10),
        backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.surface)
      ),
    );
  }
}


class StatusField extends ConsumerStatefulWidget {
  const StatusField({
    super.key,
    required this.type,
  });

  final EnumMediaType type;

  @override
  ConsumerState<StatusField> createState() => _StatusFieldState();
}

class _StatusFieldState extends ConsumerState<StatusField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final status =
        ref.watch(listFilterProvider.select((value) => value.status));
    final isSelected = status != null;
    return DropdownMenu<EnumMediaStatus?>(
      controller: _controller,
      width: 200,
      hintText: 'Status',
      initialSelection: status,
      enableSearch: false,
      onSelected: (value) =>
          ref.read(listFilterProvider.notifier).updateStatus(value),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary,
        border: InputBorder.none,
      ),
      trailingIcon: isSelected
          ? InkWell(
              child: const Icon(Icons.clear),
              onTap: () {
                ref.read(listFilterProvider.notifier).updateFormat(null);
                _controller.clear();
              },
            )
          : null,
      dropdownMenuEntries: [
        for (final st in statusValues(widget.type))
          DropdownMenuEntry(
            value: st,
            label: mediaStatusStr(st),
          ),
      ],
      menuStyle: MenuStyle(
        elevation: const WidgetStatePropertyAll(10),
        backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.surface)
      ),
    );
  }
}

