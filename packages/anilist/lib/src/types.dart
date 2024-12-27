import 'dart:convert';
import 'package:option_result/result.dart';

/// Return type for functions in the library
typedef ReturnType<T> = FutureResult<T, Error>;

class ApiErrors extends Error {
  final List<ApiError> errors;

  ApiErrors(this.errors);

  factory ApiErrors.fromJson(Map<String, dynamic> json) {
    return ApiErrors(
      (json['errors'] as List<dynamic>)
          .map((e) => ApiError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'errors': errors.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() => jsonEncode(toJson());
}

/// A class representing the error returned by the Anilist API
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

/// Error class returned when authenticated is necessary but was not provided
class AuthError extends Error {
  @override
  String toString() => 'Authentication is required for this operation.'
      'Please set token using `setToken`';
}
