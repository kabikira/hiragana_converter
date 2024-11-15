// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Request _$RequestFromJson(Map<String, dynamic> json) => Request(
      appld: json['appld'] as String,
      sentence: json['sentence'] as String,
      outputType: json['output_type'] as String? ?? "heragane",
    );

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{
      'appld': instance.appld,
      'sentence': instance.sentence,
      'output_type': instance.outputType,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      converted: json['converted'] as String,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'converted': instance.converted,
    };
