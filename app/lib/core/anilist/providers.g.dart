// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unreadNotificationHash() =>
    r'9f49c37819fc780edfbd90789f3aecc90a1f824a';

/// See also [unreadNotification].
@ProviderFor(unreadNotification)
final unreadNotificationProvider = FutureProvider<int>.internal(
  unreadNotification,
  name: r'unreadNotificationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unreadNotificationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UnreadNotificationRef = FutureProviderRef<int>;
String _$trendingMediaItemHash() => r'8e3492ee93871dcc6ce10150c13a9ee0aea3696d';

/// See also [trendingMediaItem].
@ProviderFor(trendingMediaItem)
final trendingMediaItemProvider =
    FutureProvider<List<FragmentMediaMin>>.internal(
  trendingMediaItem,
  name: r'trendingMediaItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trendingMediaItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TrendingMediaItemRef = FutureProviderRef<List<FragmentMediaMin>>;
String _$popularMediaItemHash() => r'2d091e196265d288b29ce118928b97f1455adf4e';

/// See also [popularMediaItem].
@ProviderFor(popularMediaItem)
final popularMediaItemProvider =
    FutureProvider<List<FragmentMediaMin>>.internal(
  popularMediaItem,
  name: r'popularMediaItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$popularMediaItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PopularMediaItemRef = FutureProviderRef<List<FragmentMediaMin>>;
String _$recentReviewsHash() => r'95f44bf3575ae9257ee521a727667cc91c7982a2';

/// See also [recentReviews].
@ProviderFor(recentReviews)
final recentReviewsProvider = FutureProvider<List<FragmentReview>>.internal(
  recentReviews,
  name: r'recentReviewsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentReviewsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentReviewsRef = FutureProviderRef<List<FragmentReview>>;
String _$recentThreadsHash() => r'd74c11dc35e01801c60ea209a8ba4d38b3f776f0';

/// See also [recentThreads].
@ProviderFor(recentThreads)
final recentThreadsProvider =
    FutureProvider<List<QueryThreadsPagethreads>>.internal(
  recentThreads,
  name: r'recentThreadsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentThreadsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentThreadsRef = FutureProviderRef<List<QueryThreadsPagethreads>>;
String _$generalActivityHash() => r'763d69916675ccb7d1d1a375a5fcf1701f1a8f10';

/// See also [generalActivity].
@ProviderFor(generalActivity)
final generalActivityProvider =
    AutoDisposeFutureProvider<List<QueryActivitiesPageactivities>>.internal(
  generalActivity,
  name: r'generalActivityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$generalActivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GeneralActivityRef
    = AutoDisposeFutureProviderRef<List<QueryActivitiesPageactivities>>;
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
String _$globalActivitiesHash() => r'fc900d456c48c071b1f0d3871914ea222d1a6a57';

/// See also [GlobalActivities].
@ProviderFor(GlobalActivities)
final globalActivitiesProvider = AutoDisposeAsyncNotifierProvider<
    GlobalActivities, List<QueryActivitiesPageactivities>>.internal(
  GlobalActivities.new,
  name: r'globalActivitiesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$globalActivitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GlobalActivities
    = AutoDisposeAsyncNotifier<List<QueryActivitiesPageactivities>>;
String _$followingActivitiesHash() =>
    r'bd01a89e132c3a7b69d843cb40248f2d66c812b0';

/// See also [FollowingActivities].
@ProviderFor(FollowingActivities)
final followingActivitiesProvider = AutoDisposeAsyncNotifierProvider<
    FollowingActivities, List<QueryActivitiesPageactivities>>.internal(
  FollowingActivities.new,
  name: r'followingActivitiesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$followingActivitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FollowingActivities
    = AutoDisposeAsyncNotifier<List<QueryActivitiesPageactivities>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
