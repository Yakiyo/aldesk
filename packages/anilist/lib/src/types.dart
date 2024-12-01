import 'dart:convert';
import 'package:option_result/result.dart';

/// List of ApiError
typedef ApiErrors = List<ApiError>;

/// Return type for functions in the library
typedef ReturnType<T> = FutureOrResult<T, ApiErrors>;

/// A class representing the errors returned by the Anilist API
class ApiError extends Error {
  /// The error message
  final String message;

  /// A status code returned by the API
  final int status;

  /// A list of locations where the error occurred
  final List<(int line, int column)> locations;

  ApiError(
      {required this.message, required this.status, required this.locations});

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      message: json['message'],
      status: json['status'],
      locations: (json['locations'] as List<dynamic>)
          .map((e) => (
                (e as Map<String, dynamic>)['line'] as int,
                (e)['column'] as int,
              ))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'status': status,
      'locations':
          locations.map((e) => {'line': e.$1, 'column': e.$2}).toList(),
    };
  }

  @override
  String toString() => jsonEncode(toJson());
}
