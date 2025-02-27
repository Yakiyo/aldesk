abstract class Routes {
  static const home = '/';
  static const homeBase = '/home';
  static const login = '/login';
  static const profile = '/profile';
  static const search = '/search';
  static const settings = '/settings';
  static const libraryAnime = '/library/anime';
  static const libraryManga = '/library/manga';
  static const animelist = '/animelist/:id';
  static String animelistWithId(int id) => '/animelist/$id';
  static const mangalist = '/mangalist/:id';
  static String mangalistWithId(int id) => '/mangalist/$id';
  static const notifications = '/notifications';
  static const media = '/media/:id';
  static String mediaWithId(int id) => '/media/$id';
  static const user = '/user/:id';
  static String userWithId(int id) => '/user/$id';
  static const forum = '/forum';
  static const thread = '/forum/thread/:id';
  static String threadWithId(int id) => '/forum/thread/$id';
  static const activity = '/activity/:id';
  static String activityWithId(int id) => '/activity/$id';
  static const reviews = '/reviews';
  static const review = '/reviews/:id';
  static String reviewsWithId(int id) => '/reviews/$id';
  static const character = '/character/:id';
  static String characterWithId(int id) => '/character/$id';
  static const staff = '/staff/:id';
  static String staffWithId(int id) => '/staff/$id';
  static const studio = '/studio/:id';
  static String studioWithId(int id) => '/studio/$id';
}
