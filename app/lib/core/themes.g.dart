// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeDataHash() => r'74320318d26f356d90201dcbf1fcd88752c05321';

/// Provider that returns the dark and light mode theme datas
///
/// The theme datas change whenever the user color changes which is handled
/// by the user color provider
///
/// Copied from [themeData].
@ProviderFor(themeData)
final themeDataProvider = AutoDisposeProvider<(ThemeData, ThemeData)>.internal(
  themeData,
  name: r'themeDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ThemeDataRef = AutoDisposeProviderRef<(ThemeData, ThemeData)>;
String _$themeManagerHash() => r'e0389718239a5a8e5bca94e1ffa95468b9ff0a37';

/// See also [ThemeManager].
@ProviderFor(ThemeManager)
final themeManagerProvider =
    AutoDisposeNotifierProvider<ThemeManager, ThemeMode>.internal(
  ThemeManager.new,
  name: r'themeManagerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeManager = AutoDisposeNotifier<ThemeMode>;
String _$userColorHash() => r'897d4acd2d59dfa597db06fafccaa548ef557537';

/// See also [UserColor].
@ProviderFor(UserColor)
final userColorProvider =
    AutoDisposeNotifierProvider<UserColor, Color>.internal(
  UserColor.new,
  name: r'userColorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userColorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserColor = AutoDisposeNotifier<Color>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
