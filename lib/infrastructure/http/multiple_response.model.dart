import 'package:json_annotation/json_annotation.dart';

part 'multiple_response.model.g.dart';

@JsonSerializable()
class MultipleRequestResult {
  @JsonKey(defaultValue: [])
  List<dynamic> success;
  @JsonKey(defaultValue: [])
  List<dynamic> errors;

  MultipleRequestResult(this.success, this.errors);

  Map<String, dynamic> toJson() => _$MultipleRequestResultToJson(this);

  factory MultipleRequestResult.fromJson(Map<String, dynamic> json) {
    return _$MultipleRequestResultFromJson(json);
  }

  bool hasErrors() => errors.isNotEmpty;
}
