// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerFormat _$AnswerFormatFromJson(Map<String, dynamic> json) => AnswerFormat(
  answerType: json['type'] as String?,
  question: json['question'] as String?,
  questionContent: json['questionContent'] == null
      ? null
      : TextContent.fromJson(json['questionContent'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AnswerFormatToJson(AnswerFormat instance) =>
    <String, dynamic>{
      'question': instance.question,
      'questionContent': instance.questionContent,
      'type': instance.answerType,
    };
