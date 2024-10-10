// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultipleRequestResult _$MultipleRequestResultFromJson(
        Map<String, dynamic> json) =>
    MultipleRequestResult(
      json['success'] as List<dynamic>? ?? [],
      json['errors'] as List<dynamic>? ?? [],
    );

Map<String, dynamic> _$MultipleRequestResultToJson(
        MultipleRequestResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
    };
