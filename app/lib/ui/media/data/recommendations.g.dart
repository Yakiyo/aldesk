// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaRecommendationHash() =>
    r'43aac923978f6faa931c626afdad36fbc3027d7c';

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

abstract class _$MediaRecommendation extends BuildlessAutoDisposeAsyncNotifier<
    List<FragmentRecommendationNode>> {
  late final int id;

  FutureOr<List<FragmentRecommendationNode>> build(
    int id,
  );
}

/// See also [MediaRecommendation].
@ProviderFor(MediaRecommendation)
const mediaRecommendationProvider = MediaRecommendationFamily();

/// See also [MediaRecommendation].
class MediaRecommendationFamily
    extends Family<AsyncValue<List<FragmentRecommendationNode>>> {
  /// See also [MediaRecommendation].
  const MediaRecommendationFamily();

  /// See also [MediaRecommendation].
  MediaRecommendationProvider call(
    int id,
  ) {
    return MediaRecommendationProvider(
      id,
    );
  }

  @override
  MediaRecommendationProvider getProviderOverride(
    covariant MediaRecommendationProvider provider,
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
  String? get name => r'mediaRecommendationProvider';
}

/// See also [MediaRecommendation].
class MediaRecommendationProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MediaRecommendation, List<FragmentRecommendationNode>> {
  /// See also [MediaRecommendation].
  MediaRecommendationProvider(
    int id,
  ) : this._internal(
          () => MediaRecommendation()..id = id,
          from: mediaRecommendationProvider,
          name: r'mediaRecommendationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaRecommendationHash,
          dependencies: MediaRecommendationFamily._dependencies,
          allTransitiveDependencies:
              MediaRecommendationFamily._allTransitiveDependencies,
          id: id,
        );

  MediaRecommendationProvider._internal(
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
  FutureOr<List<FragmentRecommendationNode>> runNotifierBuild(
    covariant MediaRecommendation notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MediaRecommendation Function() create) {
    return ProviderOverride(
      origin: this,
      override: MediaRecommendationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MediaRecommendation,
      List<FragmentRecommendationNode>> createElement() {
    return _MediaRecommendationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaRecommendationProvider && other.id == id;
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
mixin MediaRecommendationRef
    on AutoDisposeAsyncNotifierProviderRef<List<FragmentRecommendationNode>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MediaRecommendationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MediaRecommendation,
        List<FragmentRecommendationNode>> with MediaRecommendationRef {
  _MediaRecommendationProviderElement(super.provider);

  @override
  int get id => (origin as MediaRecommendationProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
