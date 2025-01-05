// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaItemHash() => r'0f4cf688b97b51f1e9d3ef56176c5d60bd441d83';

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

/// See also [mediaItem].
@ProviderFor(mediaItem)
const mediaItemProvider = MediaItemFamily();

/// See also [mediaItem].
class MediaItemFamily extends Family<AsyncValue<QueryMediaMedia>> {
  /// See also [mediaItem].
  const MediaItemFamily();

  /// See also [mediaItem].
  MediaItemProvider call(
    int id,
  ) {
    return MediaItemProvider(
      id,
    );
  }

  @override
  MediaItemProvider getProviderOverride(
    covariant MediaItemProvider provider,
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
  String? get name => r'mediaItemProvider';
}

/// See also [mediaItem].
class MediaItemProvider extends FutureProvider<QueryMediaMedia> {
  /// See also [mediaItem].
  MediaItemProvider(
    int id,
  ) : this._internal(
          (ref) => mediaItem(
            ref as MediaItemRef,
            id,
          ),
          from: mediaItemProvider,
          name: r'mediaItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaItemHash,
          dependencies: MediaItemFamily._dependencies,
          allTransitiveDependencies: MediaItemFamily._allTransitiveDependencies,
          id: id,
        );

  MediaItemProvider._internal(
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
  Override overrideWith(
    FutureOr<QueryMediaMedia> Function(MediaItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaItemProvider._internal(
        (ref) => create(ref as MediaItemRef),
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
  FutureProviderElement<QueryMediaMedia> createElement() {
    return _MediaItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaItemProvider && other.id == id;
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
mixin MediaItemRef on FutureProviderRef<QueryMediaMedia> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MediaItemProviderElement extends FutureProviderElement<QueryMediaMedia>
    with MediaItemRef {
  _MediaItemProviderElement(super.provider);

  @override
  int get id => (origin as MediaItemProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
