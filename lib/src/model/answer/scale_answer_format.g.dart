// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaleAnswerFormat _$ScaleAnswerFormatFromJson(
  Map<String, dynamic> json,
) => ScaleAnswerFormat(
  maximumValue: (json['maximumValue'] as num).toDouble(),
  minimumValue: (json['minimumValue'] as num).toDouble(),
  defaultValue: (json['defaultValue'] as num).toDouble(),
  step: (json['step'] as num).toDouble(),
  maximumValueDescription: json['maximumValueDescription'] as String? ?? '',
  minimumValueDescription: json['minimumValueDescription'] as String? ?? '',
  question: json['question'] as String?,
  questionContent: json['questionContent'] == null
      ? null
      : TextContent.fromJson(json['questionContent'] as Map<String, dynamic>),
  answerType: json['type'] as String? ?? type,
  formatType:
      $enumDecodeNullable(_$ScaleAnswerFormatTypeEnumMap, json['formatType']) ??
      ScaleAnswerFormatType.scale,
);

Map<String, dynamic> _$ScaleAnswerFormatToJson(ScaleAnswerFormat instance) =>
    <String, dynamic>{
      'question': instance.question,
      'questionContent': instance.questionContent,
      'type': instance.answerType,
      'maximumValue': instance.maximumValue,
      'minimumValue': instance.minimumValue,
      'defaultValue': instance.defaultValue,
      'step': instance.step,
      'maximumValueDescription': instance.maximumValueDescription,
      'minimumValueDescription': instance.minimumValueDescription,
      'formatType': _$ScaleAnswerFormatTypeEnumMap[instance.formatType]!,
    };

const _$ScaleAnswerFormatTypeEnumMap = {
  ScaleAnswerFormatType.scale: 'scale',
  ScaleAnswerFormatType.rating: 'rating',
};
