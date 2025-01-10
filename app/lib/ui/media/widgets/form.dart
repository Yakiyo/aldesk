import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../config/utils/extensions.dart';
import '../../../config/utils/utils.dart';
import '../../core/widgets/async_widget.dart';
import '../data/media.dart';
import '../data/media_list.dart';

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
        height: 500,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
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
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.saveAndValidate();
                      if (context.canPop()) {
                        context.pop();
                      }
                    },
                    child: const Text("Save")),
              ],
            ),
            Row(
              children: [
                _inputFields(),
                _listSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _listSection() {
    return const SizedBox.shrink();
  }

  Widget _inputFields() {
    return Column(
      children: [
        _inputFirstRow(),
        _inputSecondRow(),
        _inputThirdRow(),
      ],
    );
  }

  Widget _inputFirstRow() {
    return Row(
      children: [
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Status"),
            subtitle: FormBuilderDropdown(
                decoration: const InputDecoration(border: OutlineInputBorder()),
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
        SizedBox(
          width: 220,
          height: 100,
          child: ListTile(
            title: const Text("Score"),
            subtitle: FormBuilderTextField(
              initialValue: data.score.toString(),
              name: 'score',
              decoration: const InputDecoration(border: OutlineInputBorder()),
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
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

  Widget _inputSecondRow() {
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
              initialValue: data.completedAt,
              format: DateFormat("y-M-d"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _inputThirdRow() {
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
                decoration: const InputDecoration(border: OutlineInputBorder()),
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
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        )
      ],
    );
  }
}
