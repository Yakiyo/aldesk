// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityTypeHash() => r'f3ae07c1b6a8de6f9561b39e20f617163a21fbc3';

/// See also [activityType].
@ProviderFor(activityType)
final activityTypeProvider = AutoDisposeProvider<ActivityType>.internal(
  activityType,
  name: r'activityTypeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$activityTypeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ActivityTypeRef = AutoDisposeProviderRef<ActivityType>;
String _$recentActivityHash() => r'c244239bf445259587ff50ab9dca686c3dd9cb84';

/// See also [RecentActivity].
@ProviderFor(RecentActivity)
final recentActivityProvider = AsyncNotifierProvider<RecentActivity,
    List<QueryActivitiesPageactivities>>.internal(
  RecentActivity.new,
  name: r'recentActivityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentActivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RecentActivity = AsyncNotifier<List<QueryActivitiesPageactivities>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
