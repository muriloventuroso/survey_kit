// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

const _fontWeightConverter = FontWeightConverter();

TextContent _$TextContentFromJson(Map<String, dynamic> json) => TextContent(
      text: json['text'] as String,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 16,
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.center,
      fontWeight: json['fontWeight'] == null
          ? FontWeight.normal
          : _fontWeightConverter.fromJson(json['fontWeight'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TextContentToJson(TextContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['text'] = instance.text;
  val['fontSize'] = instance.fontSize;
  val['textAlign'] = _$TextAlignEnumMap[instance.textAlign];
  val['fontWeight'] = _fontWeightConverter.toJson(instance.fontWeight);
  val['type'] = TextContent.type;
  return val;
}

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};
