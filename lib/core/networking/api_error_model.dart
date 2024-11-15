import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final dynamic data;
  final bool? status;
  final int? code;

  ApiErrorModel({this.message, this.data, this.status, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  String getAllErrorMessages() {
    if (data == null || data is List && (data as List).isEmpty) {
      return message ?? "Unknown Error occurred";
    }

    if (data is Map<String, dynamic>) {
      final errorMessage =
      (data as Map<String, dynamic>).entries.map((entry) {
        final value = entry.value;
        return "${value.join(',')}";
      }).join('\n');

      return errorMessage;
    } else if (data is List) {
      return (data as List).join('\n');
    }

    return message ?? "Unknown Error occurred";
  }
}