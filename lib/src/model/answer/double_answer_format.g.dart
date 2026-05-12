// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'double_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoubleAnswerFormat _$DoubleAnswerFormatFromJson(Map<String, dynamic> json) =>
    DoubleAnswerFormat(
      defaultValue: (json['defaultValue'] as num?)?.toDouble(),
      hint: json['hint'] as String? ?? '',
      question: json['question'] as String?,
      questionContent: json['questionContent'] == null
          ? null
          : TextContent.fromJson(
              json['questionContent'] as Map<String, dynamic>,
            ),
      answerType: json['type'] as String?,
    );

Map<String, dynamic> _$DoubleAnswerFormatToJson(DoubleAnswerFormat instance) =>
    <String, dynamic>{
      'question': instance.question,
      'questionContent': instance.questionContent,
      'type': instance.answerType,
      'defaultValue': instance.defaultValue,
      'hint': instance.hint,
    };
