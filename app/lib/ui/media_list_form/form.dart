import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../config/utils/extensions.dart';
import '../../config/utils/utils.dart';
import '../core/toast/toast.dart';
import '../core/widgets/async_widget.dart';
import '../media/data/media.dart';
import 'data/media_list.dart';

class MediaListForm extends ConsumerWidget {
  final int mediaId;
  const MediaListForm({super.key, required this.mediaId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // this value will always be non-null since we are viewing the media page
    // at the moment of seeing the form, but just to be on the safe side, we still
    // use valueOrNull instead of value which might throw an exception
    final media = ref.watch(mediaItemProvider(mediaId)).valueOrNull;
    final data = ref.watch(formDataProvider(mediaId));
    if (media == null) {
      return const SizedBox.shrink();
    }
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 1000,
        height: 600,
        child: AsyncWidgetConsumer(
          value: data,
          builder: (context, value) => FormBody(data: value, media: media),
        ),
      ),
    );
  }
}

class FormBody extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  final MediaListFormData data;
  final QueryMediaMedia media;

  FormBody({super.key, required this.data, required this.media});

  bool get _isAnime => media.type != null && media.type == EnumMediaType.ANIME;
  bool get _isManga => !_isAnime;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.secondary,
      child: FormBuilder(
        key: _formKey,
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 700,
                    child: Text(media.title?.userPreferred ?? "",
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 28)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 20,
                  children: [
                    FavIcon(isFavourite: data.isFavourite),
                    Consumer(
                      builder: (context, ref, child) {
                        return ElevatedButton(
                            onPressed: () {
                              final valid =
                                  _formKey.currentState?.saveAndValidate() ??
                                      false;
                              if (!valid) return;
                              if (context.canPop()) {
                                context.pop();
                              }
                              _handleSave(context, ref);
                            },
                            child: const Text("Save"));
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _inputFields(context),
                ListSection(
                    isPrivate: data.private,
                    customLists: data.customLists,
                    hiddenFromStatusLists: data.hiddenFromStatusLists),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      children: [
        _inputFirstRow(context),
        _inputSecondRow(context),
        _inputThirdRow(context),
        _inputFourthRow(context),
      ],
    );
  }

  Widget _inputFirstRow(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Status"),
            subtitle: FormBuilderDropdown(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surface),
                initialValue: data.status!,
                focusColor: Colors.transparent,
                name: 'status',
                items: EnumMediaListStatus.values
                    .where((value) => value != EnumMediaListStatus.$unknown)
                    .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value.name.toLowerCase().capitalize())))
                    .toList()),
          ),
        ),
        // TODO: use custom number input field with increment decrement controls
        // NumberTextField(
        //   title: "Score",
        //   name: 'score',
        //   color: Theme.of(context).colorScheme.surface,
        //   initialValue: data.score.toDouble(),
        // ),
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Score"),
            subtitle: FormBuilderTextField(
              initialValue: data.score.toString(),
              name: 'score',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
              valueTransformer: (value) => int.parse(value ?? '0'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(errorText: "Must be an integer"),
                FormBuilderValidators.between(0, 10,
                    errorText: "Must be within 0 and 10"),
              ]),
            ),
          ),
        ),
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: Text("Re${_isAnime ? "watches" : "reads"}"),
            subtitle: FormBuilderTextField(
              initialValue: data.repeat.toString(),
              name: 'repeat',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
              valueTransformer: (value) => int.parse(value ?? '0'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(errorText: "Must be an integer"),
                FormBuilderValidators.min(0,
                    errorText: "Must be greater than 0"),
              ]),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputSecondRow(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Progress"),
            subtitle: FormBuilderTextField(
              initialValue: data.progress.toString(),
              name: 'progress',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
              valueTransformer: (value) => int.parse(value ?? '0'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(errorText: "Must be an integer"),
                FormBuilderValidators.min(0,
                    errorText: "Must be greater than 0"),
              ]),
            ),
          ),
        ),
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Start Date"),
            subtitle: FormBuilderDateTimePicker(
              name: 'startedAt',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
              initialValue: data.startedAt,
              format: DateFormat("y-M-d"),
            ),
          ),
        ),
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("End Date"),
            subtitle: FormBuilderDateTimePicker(
              name: 'completedAt',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
              initialValue: data.completedAt,
              format: DateFormat("y-M-d"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _inputThirdRow(BuildContext context) {
    return Row(
      children: [
        if (_isManga)
          SizedBox(
            width: 220,
            height: 100,
            child: ListTile(
              title: const Text("Volume Progress"),
              subtitle: FormBuilderTextField(
                initialValue: data.progressVolumes.toString(),
                name: 'progressVolumes',
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    hoverColor: Theme.of(context).colorScheme.surface,
                    fillColor: Theme.of(context).colorScheme.surface),
                valueTransformer: (value) => int.parse(value ?? '0'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.numeric(
                      errorText: "Must be an integer"),
                  FormBuilderValidators.min(0,
                      errorText: "Must be greater than 0"),
                ]),
              ),
            ),
          ),
        SizedBox(
          width: 220 * (_isManga ? 2 : 3),
          height: 100,
          child: ListTile(
            title: const Text("Note"),
            subtitle: FormBuilderTextField(
              name: 'note',
              initialValue: data.notes ?? "",
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hoverColor: Theme.of(context).colorScheme.surface,
                  fillColor: Theme.of(context).colorScheme.surface),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputFourthRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 50,
      children: [
        SizedBox(
          width: 220,
          height: 100,
          child: FormBuilderCheckbox(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              name: 'hideFromStatusLists',
              title: const Text("Hide from status lists"),
              initialValue: data.hiddenFromStatusLists),
        ),
        SizedBox(
          width: 220,
          height: 100,
          child: FormBuilderCheckbox(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              name: 'private',
              title: const Text("Private"),
              initialValue: data.private),
        )
      ],
    );
  }

  void _handleSave(BuildContext context, WidgetRef ref) async {
    final saved = _formKey.currentState!.value;
    final Map<String, bool> customLists = {};
    for (final key in saved.keys) {
      if (key.startsWith('customLists.')) {
        customLists[key.replaceFirst("customLists.", "")] = saved[key] as bool;
      }
    }
    final data = MediaListFormData(
        status: saved['status'],
        score: saved['score'],
        progress: saved['progress'],
        progressVolumes: saved['progressVolumes'],
        repeat: saved['repeat'],
        private: saved['private'],
        hiddenFromStatusLists: saved['hideFromStatusLists'],
        startedAt: saved['startedAt'],
        completedAt: saved['completedAt'],
        notes: saved['notes'],
        isFavourite: saved['favourite'],
        customLists: customLists);

    await ref.read(formDataProvider(media.id).notifier).updateData(data);
    displaySuccess(
      "Successfully updated entry"
    );
  }
}

class FavIcon extends StatefulWidget {
  final bool isFavourite;
  const FavIcon({super.key, required this.isFavourite});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  late bool isFavourite = widget.isFavourite;
  @override
  Widget build(BuildContext context) {
    
    return FormBuilderField<bool>(
      initialValue: isFavourite,
      name: 'favourite',
      builder: (field) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: isFavourite ? Colors.red : Colors.white,
          ),
          onPressed: () {
            field.didChange(!isFavourite);
            setState(() => isFavourite = !isFavourite);
          },
        );
      },
    );
  }
}

class ListSection extends StatelessWidget {
  final bool isPrivate;
  final bool hiddenFromStatusLists;
  final Map<String, bool> customLists;
  const ListSection(
      {super.key,
      required this.isPrivate,
      required this.customLists,
      required this.hiddenFromStatusLists});

  @override
  Widget build(BuildContext context) {
    final keys = customLists.keys.toList();
    // first two items are hidden from status list and is private, third is a
    // divider, the rest are items
    final totalLength = keys.length + 1;
    return SizedBox(
      height: 350,
      width: 200,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: totalLength,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Text("Custom Lists",
                  style: Theme.of(context).textTheme.bodyLarge);
            }
            assert(index > 0 && index < totalLength, "wtf is $index");
            final key = keys[index - 1];
            final value = customLists[key] ?? false;
            return FormBuilderCheckbox(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                name: 'customLists.$key',
                title: Text(key),
                initialValue: value);
          },
        ),
      ),
    );
  }
}
