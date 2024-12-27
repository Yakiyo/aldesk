import 'package:http/http.dart' as http;

final baseClient = http.Client();

final headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

final baseUrl = Uri.parse('https://graphql.anilist.co');

bool isAuthed() => headers.containsKey('Authorization');
