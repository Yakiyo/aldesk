// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaCharacterHash() => r'a538db9f54293378d7c48cfa6048c25066bfd72a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MediaCharacter
    extends BuildlessAutoDisposeAsyncNotifier<List<FragmentCharacterEdge>> {
  late final int id;

  FutureOr<List<FragmentCharacterEdge>> build(
    int id,
  );
}

/// See also [MediaCharacter].
@ProviderFor(MediaCharacter)
const mediaCharacterProvider = MediaCharacterFamily();

/// See also [MediaCharacter].
class MediaCharacterFamily
    extends Family<AsyncValue<List<FragmentCharacterEdge>>> {
  /// See also [MediaCharacter].
  const MediaCharacterFamily();

  /// See also [MediaCharacter].
  MediaCharacterProvider call(
    int id,
  ) {
    return MediaCharacterProvider(
      id,
    );
  }

  @override
  MediaCharacterProvider getProviderOverride(
    covariant MediaCharacterProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mediaCharacterProvider';
}

/// See also [MediaCharacter].
class MediaCharacterProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MediaCharacter, List<FragmentCharacterEdge>> {
  /// See also [MediaCharacter].
  MediaCharacterProvider(
    int id,
  ) : this._internal(
          () => MediaCharacter()..id = id,
          from: mediaCharacterProvider,
          name: r'mediaCharacterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaCharacterHash,
          dependencies: MediaCharacterFamily._dependencies,
          allTransitiveDependencies:
              MediaCharacterFamily._allTransitiveDependencies,
          id: id,
        );

  MediaCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<List<FragmentCharacterEdge>> runNotifierBuild(
    covariant MediaCharacter notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MediaCharacter Function() create) {
    return ProviderOverride(
      origin: this,
      override: MediaCharacterProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MediaCharacter,
      List<FragmentCharacterEdge>> createElement() {
    return _MediaCharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaCharacterProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MediaCharacterRef
    on AutoDisposeAsyncNotifierProviderRef<List<FragmentCharacterEdge>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MediaCharacterProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MediaCharacter,
        List<FragmentCharacterEdge>> with MediaCharacterRef {
  _MediaCharacterProviderElement(super.provider);

  @override
  int get id => (origin as MediaCharacterProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
