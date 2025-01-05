import 'package:anilist/anilist.dart';
import 'package:anilist/src/models/staff.graphql.dart';

/// Paginated list of staff members for a media entry.
ReturnType<QueryMediaStaffMediastaff> mediaStaff({
  required int id,
  int page = 1,
  int perPage = 9,
}) {
  final variables =
      VariablesQueryMediaStaff(id: id, page: page, perPage: perPage).toJson();
  return request(
          query: printNode(documentNodeQueryMediaStaff), variables: variables)
      .then((data) => QueryMediaStaff.fromJson(data).Media!.staff!);
}
