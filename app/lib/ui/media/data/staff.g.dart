// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaStaffHash() => r'ce4f3fd67bf4190987653c24a977d8df56f4a615';

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

abstract class _$MediaStaff
    extends BuildlessAutoDisposeAsyncNotifier<List<FragmentStaffEdge>> {
  late final int id;

  FutureOr<List<FragmentStaffEdge>> build(
    int id,
  );
}

/// See also [MediaStaff].
@ProviderFor(MediaStaff)
const mediaStaffProvider = MediaStaffFamily();

/// See also [MediaStaff].
class MediaStaffFamily extends Family<AsyncValue<List<FragmentStaffEdge>>> {
  /// See also [MediaStaff].
  const MediaStaffFamily();

  /// See also [MediaStaff].
  MediaStaffProvider call(
    int id,
  ) {
    return MediaStaffProvider(
      id,
    );
  }

  @override
  MediaStaffProvider getProviderOverride(
    covariant MediaStaffProvider provider,
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
  String? get name => r'mediaStaffProvider';
}

/// See also [MediaStaff].
class MediaStaffProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MediaStaff, List<FragmentStaffEdge>> {
  /// See also [MediaStaff].
  MediaStaffProvider(
    int id,
  ) : this._internal(
          () => MediaStaff()..id = id,
          from: mediaStaffProvider,
          name: r'mediaStaffProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaStaffHash,
          dependencies: MediaStaffFamily._dependencies,
          allTransitiveDependencies:
              MediaStaffFamily._allTransitiveDependencies,
          id: id,
        );

  MediaStaffProvider._internal(
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
  FutureOr<List<FragmentStaffEdge>> runNotifierBuild(
    covariant MediaStaff notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MediaStaff Function() create) {
    return ProviderOverride(
      origin: this,
      override: MediaStaffProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MediaStaff, List<FragmentStaffEdge>>
      createElement() {
    return _MediaStaffProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaStaffProvider && other.id == id;
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
mixin MediaStaffRef
    on AutoDisposeAsyncNotifierProviderRef<List<FragmentStaffEdge>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MediaStaffProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MediaStaff,
        List<FragmentStaffEdge>> with MediaStaffRef {
  _MediaStaffProviderElement(super.provider);

  @override
  int get id => (origin as MediaStaffProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
