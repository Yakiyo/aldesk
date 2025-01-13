// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaListHash() => r'1a4ba042dd272ab87c1b4a8eafd87cddc6595fe7';

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

/// See also [mediaList].
@ProviderFor(mediaList)
const mediaListProvider = MediaListFamily();

/// See also [mediaList].
class MediaListFamily extends Family<
    AsyncValue<List<QueryMediaListCollectionMediaListCollectionlists>>> {
  /// See also [mediaList].
  const MediaListFamily();

  /// See also [mediaList].
  MediaListProvider call(
    int userId,
    EnumMediaType type,
  ) {
    return MediaListProvider(
      userId,
      type,
    );
  }

  @override
  MediaListProvider getProviderOverride(
    covariant MediaListProvider provider,
  ) {
    return call(
      provider.userId,
      provider.type,
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
  String? get name => r'mediaListProvider';
}

/// See also [mediaList].
class MediaListProvider extends FutureProvider<
    List<QueryMediaListCollectionMediaListCollectionlists>> {
  /// See also [mediaList].
  MediaListProvider(
    int userId,
    EnumMediaType type,
  ) : this._internal(
          (ref) => mediaList(
            ref as MediaListRef,
            userId,
            type,
          ),
          from: mediaListProvider,
          name: r'mediaListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaListHash,
          dependencies: MediaListFamily._dependencies,
          allTransitiveDependencies: MediaListFamily._allTransitiveDependencies,
          userId: userId,
          type: type,
        );

  MediaListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.type,
  }) : super.internal();

  final int userId;
  final EnumMediaType type;

  @override
  Override overrideWith(
    FutureOr<List<QueryMediaListCollectionMediaListCollectionlists>> Function(
            MediaListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaListProvider._internal(
        (ref) => create(ref as MediaListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        type: type,
      ),
    );
  }

  @override
  FutureProviderElement<List<QueryMediaListCollectionMediaListCollectionlists>>
      createElement() {
    return _MediaListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaListProvider &&
        other.userId == userId &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MediaListRef on FutureProviderRef<
    List<QueryMediaListCollectionMediaListCollectionlists>> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `type` of this provider.
  EnumMediaType get type;
}

class _MediaListProviderElement extends FutureProviderElement<
    List<QueryMediaListCollectionMediaListCollectionlists>> with MediaListRef {
  _MediaListProviderElement(super.provider);

  @override
  int get userId => (origin as MediaListProvider).userId;
  @override
  EnumMediaType get type => (origin as MediaListProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
