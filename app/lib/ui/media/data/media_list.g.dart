// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaListStatusHash() => r'ac32a8c0cf6294553eed3b1ae5963b371f831f25';

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

/// See also [mediaListStatus].
@ProviderFor(mediaListStatus)
const mediaListStatusProvider = MediaListStatusFamily();

/// See also [mediaListStatus].
class MediaListStatusFamily extends Family<AsyncValue<String>> {
  /// See also [mediaListStatus].
  const MediaListStatusFamily();

  /// See also [mediaListStatus].
  MediaListStatusProvider call(
    int mediaId,
  ) {
    return MediaListStatusProvider(
      mediaId,
    );
  }

  @override
  MediaListStatusProvider getProviderOverride(
    covariant MediaListStatusProvider provider,
  ) {
    return call(
      provider.mediaId,
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
  String? get name => r'mediaListStatusProvider';
}

/// See also [mediaListStatus].
class MediaListStatusProvider extends AutoDisposeFutureProvider<String> {
  /// See also [mediaListStatus].
  MediaListStatusProvider(
    int mediaId,
  ) : this._internal(
          (ref) => mediaListStatus(
            ref as MediaListStatusRef,
            mediaId,
          ),
          from: mediaListStatusProvider,
          name: r'mediaListStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaListStatusHash,
          dependencies: MediaListStatusFamily._dependencies,
          allTransitiveDependencies:
              MediaListStatusFamily._allTransitiveDependencies,
          mediaId: mediaId,
        );

  MediaListStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaId,
  }) : super.internal();

  final int mediaId;

  @override
  Override overrideWith(
    FutureOr<String> Function(MediaListStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaListStatusProvider._internal(
        (ref) => create(ref as MediaListStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaId: mediaId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _MediaListStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaListStatusProvider && other.mediaId == mediaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MediaListStatusRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _MediaListStatusProviderElement
    extends AutoDisposeFutureProviderElement<String> with MediaListStatusRef {
  _MediaListStatusProviderElement(super.provider);

  @override
  int get mediaId => (origin as MediaListStatusProvider).mediaId;
}

String _$mediaListItemHash() => r'5e27ea30eac3b357bedb23b03897a2d470baffca';

abstract class _$MediaListItem
    extends BuildlessAutoDisposeAsyncNotifier<FragmentMediaList?> {
  late final int mediaId;

  FutureOr<FragmentMediaList?> build(
    int mediaId,
  );
}

/// See also [MediaListItem].
@ProviderFor(MediaListItem)
const mediaListItemProvider = MediaListItemFamily();

/// See also [MediaListItem].
class MediaListItemFamily extends Family<AsyncValue<FragmentMediaList?>> {
  /// See also [MediaListItem].
  const MediaListItemFamily();

  /// See also [MediaListItem].
  MediaListItemProvider call(
    int mediaId,
  ) {
    return MediaListItemProvider(
      mediaId,
    );
  }

  @override
  MediaListItemProvider getProviderOverride(
    covariant MediaListItemProvider provider,
  ) {
    return call(
      provider.mediaId,
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
  String? get name => r'mediaListItemProvider';
}

/// See also [MediaListItem].
class MediaListItemProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MediaListItem, FragmentMediaList?> {
  /// See also [MediaListItem].
  MediaListItemProvider(
    int mediaId,
  ) : this._internal(
          () => MediaListItem()..mediaId = mediaId,
          from: mediaListItemProvider,
          name: r'mediaListItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaListItemHash,
          dependencies: MediaListItemFamily._dependencies,
          allTransitiveDependencies:
              MediaListItemFamily._allTransitiveDependencies,
          mediaId: mediaId,
        );

  MediaListItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaId,
  }) : super.internal();

  final int mediaId;

  @override
  FutureOr<FragmentMediaList?> runNotifierBuild(
    covariant MediaListItem notifier,
  ) {
    return notifier.build(
      mediaId,
    );
  }

  @override
  Override overrideWith(MediaListItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: MediaListItemProvider._internal(
        () => create()..mediaId = mediaId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaId: mediaId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MediaListItem, FragmentMediaList?>
      createElement() {
    return _MediaListItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaListItemProvider && other.mediaId == mediaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MediaListItemRef
    on AutoDisposeAsyncNotifierProviderRef<FragmentMediaList?> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _MediaListItemProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MediaListItem,
        FragmentMediaList?> with MediaListItemRef {
  _MediaListItemProviderElement(super.provider);

  @override
  int get mediaId => (origin as MediaListItemProvider).mediaId;
}

String _$formDataHash() => r'c701e5cc571dd9cc676e2325b788a00b32868772';

abstract class _$FormData
    extends BuildlessAutoDisposeAsyncNotifier<MediaListFormData> {
  late final int mediaId;

  FutureOr<MediaListFormData> build(
    int mediaId,
  );
}

/// See also [FormData].
@ProviderFor(FormData)
const formDataProvider = FormDataFamily();

/// See also [FormData].
class FormDataFamily extends Family<AsyncValue<MediaListFormData>> {
  /// See also [FormData].
  const FormDataFamily();

  /// See also [FormData].
  FormDataProvider call(
    int mediaId,
  ) {
    return FormDataProvider(
      mediaId,
    );
  }

  @override
  FormDataProvider getProviderOverride(
    covariant FormDataProvider provider,
  ) {
    return call(
      provider.mediaId,
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
  String? get name => r'formDataProvider';
}

/// See also [FormData].
class FormDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FormData, MediaListFormData> {
  /// See also [FormData].
  FormDataProvider(
    int mediaId,
  ) : this._internal(
          () => FormData()..mediaId = mediaId,
          from: formDataProvider,
          name: r'formDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formDataHash,
          dependencies: FormDataFamily._dependencies,
          allTransitiveDependencies: FormDataFamily._allTransitiveDependencies,
          mediaId: mediaId,
        );

  FormDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaId,
  }) : super.internal();

  final int mediaId;

  @override
  FutureOr<MediaListFormData> runNotifierBuild(
    covariant FormData notifier,
  ) {
    return notifier.build(
      mediaId,
    );
  }

  @override
  Override overrideWith(FormData Function() create) {
    return ProviderOverride(
      origin: this,
      override: FormDataProvider._internal(
        () => create()..mediaId = mediaId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaId: mediaId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<FormData, MediaListFormData>
      createElement() {
    return _FormDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FormDataProvider && other.mediaId == mediaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FormDataRef on AutoDisposeAsyncNotifierProviderRef<MediaListFormData> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _FormDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FormData, MediaListFormData>
    with FormDataRef {
  _FormDataProviderElement(super.provider);

  @override
  int get mediaId => (origin as FormDataProvider).mediaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
