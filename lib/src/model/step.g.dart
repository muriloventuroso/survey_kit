// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Step _$StepFromJson(Map<String, dynamic> json) => Step(
      id: json['id'] as String?,
      content: (json['content'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      isMandatory: json['isMandatory'] as bool? ?? true,
      answerFormat: json['answerFormat'] == null
          ? null
          : AnswerFormat.fromJson(json['answerFormat'] as Map<String, dynamic>),
      buttonText: json['buttonText'] as String? ?? 'Next',
      autoNext: json['autoNext'] as bool? ?? false,
    );

Map<String, dynamic> _$StepToJson(Step instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'isMandatory': instance.isMandatory,
    'answerFormat': instance.answerFormat,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('buttonText', instance.buttonText);
  val['autoNext'] = instance.autoNext;
  val['content'] = instance.content;
  return val;
}
