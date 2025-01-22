// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaListHash() => r'4700772390eb3d190e3609d3774783bcfb1432ba';

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
class MediaListFamily
    extends Family<AsyncValue<QueryMediaListCollectionMediaListCollection>> {
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
class MediaListProvider
    extends FutureProvider<QueryMediaListCollectionMediaListCollection> {
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
    FutureOr<QueryMediaListCollectionMediaListCollection> Function(
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
  FutureProviderElement<QueryMediaListCollectionMediaListCollection>
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
mixin MediaListRef
    on FutureProviderRef<QueryMediaListCollectionMediaListCollection> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `type` of this provider.
  EnumMediaType get type;
}

class _MediaListProviderElement
    extends FutureProviderElement<QueryMediaListCollectionMediaListCollection>
    with MediaListRef {
  _MediaListProviderElement(super.provider);

  @override
  int get userId => (origin as MediaListProvider).userId;
  @override
  EnumMediaType get type => (origin as MediaListProvider).type;
}

String _$listNamesHash() => r'7be2519aded071c748ac224a30209a715bb5393c';

/// See also [listNames].
@ProviderFor(listNames)
const listNamesProvider = ListNamesFamily();

/// See also [listNames].
class ListNamesFamily extends Family<AsyncValue<List<String>>> {
  /// See also [listNames].
  const ListNamesFamily();

  /// See also [listNames].
  ListNamesProvider call(
    int userId,
    EnumMediaType type,
  ) {
    return ListNamesProvider(
      userId,
      type,
    );
  }

  @override
  ListNamesProvider getProviderOverride(
    covariant ListNamesProvider provider,
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
  String? get name => r'listNamesProvider';
}

/// See also [listNames].
class ListNamesProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [listNames].
  ListNamesProvider(
    int userId,
    EnumMediaType type,
  ) : this._internal(
          (ref) => listNames(
            ref as ListNamesRef,
            userId,
            type,
          ),
          from: listNamesProvider,
          name: r'listNamesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listNamesHash,
          dependencies: ListNamesFamily._dependencies,
          allTransitiveDependencies: ListNamesFamily._allTransitiveDependencies,
          userId: userId,
          type: type,
        );

  ListNamesProvider._internal(
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
    FutureOr<List<String>> Function(ListNamesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListNamesProvider._internal(
        (ref) => create(ref as ListNamesRef),
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
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _ListNamesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListNamesProvider &&
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
mixin ListNamesRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `type` of this provider.
  EnumMediaType get type;
}

class _ListNamesProviderElement
    extends AutoDisposeFutureProviderElement<List<String>> with ListNamesRef {
  _ListNamesProviderElement(super.provider);

  @override
  int get userId => (origin as ListNamesProvider).userId;
  @override
  EnumMediaType get type => (origin as ListNamesProvider).type;
}

String _$mediaListDataHash() => r'231c520a752d7bc02d30951f4995fda93f85e2a1';

/// See also [mediaListData].
@ProviderFor(mediaListData)
const mediaListDataProvider = MediaListDataFamily();

/// See also [mediaListData].
class MediaListDataFamily
    extends Family<AsyncValue<List<MediaListCollection>>> {
  /// See also [mediaListData].
  const MediaListDataFamily();

  /// See also [mediaListData].
  MediaListDataProvider call(
    int userId,
    EnumMediaType type,
  ) {
    return MediaListDataProvider(
      userId,
      type,
    );
  }

  @override
  MediaListDataProvider getProviderOverride(
    covariant MediaListDataProvider provider,
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
  String? get name => r'mediaListDataProvider';
}

/// See also [mediaListData].
class MediaListDataProvider
    extends AutoDisposeFutureProvider<List<MediaListCollection>> {
  /// See also [mediaListData].
  MediaListDataProvider(
    int userId,
    EnumMediaType type,
  ) : this._internal(
          (ref) => mediaListData(
            ref as MediaListDataRef,
            userId,
            type,
          ),
          from: mediaListDataProvider,
          name: r'mediaListDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaListDataHash,
          dependencies: MediaListDataFamily._dependencies,
          allTransitiveDependencies:
              MediaListDataFamily._allTransitiveDependencies,
          userId: userId,
          type: type,
        );

  MediaListDataProvider._internal(
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
    FutureOr<List<MediaListCollection>> Function(MediaListDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaListDataProvider._internal(
        (ref) => create(ref as MediaListDataRef),
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
  AutoDisposeFutureProviderElement<List<MediaListCollection>> createElement() {
    return _MediaListDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaListDataProvider &&
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
mixin MediaListDataRef
    on AutoDisposeFutureProviderRef<List<MediaListCollection>> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `type` of this provider.
  EnumMediaType get type;
}

class _MediaListDataProviderElement
    extends AutoDisposeFutureProviderElement<List<MediaListCollection>>
    with MediaListDataRef {
  _MediaListDataProviderElement(super.provider);

  @override
  int get userId => (origin as MediaListDataProvider).userId;
  @override
  EnumMediaType get type => (origin as MediaListDataProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
