import 'package:aldesk/config/routing/extension.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/routing/routes.dart';
import '../../../config/utils/utils.dart';
import '../../core/toast/toast.dart';
import '../../core/widgets/kaomoji.dart';
import '../data/characters.dart';

class CharacterList extends ConsumerWidget {
  final int id;
  const CharacterList({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(mediaCharacterProvider(id));
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
    final characters = data.value ?? [];
    if (characters.isEmpty) {
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
            for (final character in characters)
              CharacterTile(character: character),
          ],
        ),
      ),
    );
  }
}

const _tileHeight = 90.0;
const _tileWidth = 420.0;
const _tileGap = 10.0;

class CharacterTile extends StatelessWidget {
  final FragmentCharacterEdge character;
  const CharacterTile({super.key, required this.character});

  static const _imageWidth = 60.0;

  String? get _characterImage => character.node?.image?.large;
  String get _characterName =>
      character.node?.name?.userPreferred ?? "<unknown>";
  String get _characterRole =>
      character.role?.name
          .split("_")
          .map((i) => i.toLowerCase().capitalize())
          .join(" ") ??
      "<unknown>";
  FragmentCharacterEdgevoiceActors? get _va =>
      character.voiceActors?.firstOrNull;
  String? get _vaImage => _va?.image?.large;
  String get _vaName => _va?.name?.userPreferred ?? "";
  String get _vaLang => _va?.language ?? "";

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              final id = character.node?.id;
              assert(id != null);
              context.to(Routes.characterWithId(id!));
            },
            child: Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _characterImageSection(context),
                SizedBox(
                  height: _tileHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_characterName, softWrap: true),
                      Text(_characterRole),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (_va != null && _vaName.isNotEmpty)
            InkWell(
              onTap: () {
                final id = _va?.id;
                assert(id != null);
                context.to(Routes.staffWithId(id!));
              },
              child: Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: _tileHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(_vaName, softWrap: true),
                        Text(_vaLang),
                      ],
                    ),
                  ),
                  _vaImageSection(context)
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _characterImageSection(BuildContext context) {
    return _characterImage != null
        ? Image.network(
            _characterImage!,
            width: _imageWidth,
            height: _tileHeight,
            fit: BoxFit.cover,
          )
        : const SizedBox(
            width: _imageWidth,
            height: _tileHeight,
            child: Center(
              child: Icon(Icons.image_not_supported_outlined),
            ),
          );
  }

  Widget _vaImageSection(BuildContext context) {
    return _vaImage != null
        ? Image.network(
            _vaImage!,
            width: _imageWidth,
            height: _tileHeight,
            fit: BoxFit.cover,
          )
        : const SizedBox(width: _imageWidth, height: _tileHeight);
  }
}
