import 'dart:convert';

class UploadPhotoResponse {
  final bool error;
  final String message;

  UploadPhotoResponse({
    required this.error,
    required this.message,
  });

  factory UploadPhotoResponse.fromMap(Map<String, dynamic> map) {
    return UploadPhotoResponse(
      error: map['error'] ?? false,
      message: map['message'] ?? '',
    );
  }

  factory UploadPhotoResponse.fromJson(String source) =>
      UploadPhotoResponse.fromMap(json.decode(source));
}
