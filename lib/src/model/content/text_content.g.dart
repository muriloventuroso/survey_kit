// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextContent _$TextContentFromJson(Map<String, dynamic> json) => TextContent(
      text: json['text'] as String,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 16,
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.center,
      fontWeight:
          $enumDecodeNullable(_$FontWeightEnumMap, json['fontWeight']) ??
              FontWeight.normal,
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
  val['textAlign'] = _$TextAlignEnumMap[instance.textAlign]!;
  val['fontWeight'] = _$FontWeightEnumMap[instance.fontWeight]!;
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

const _$FontWeightEnumMap = {
  FontWeight.w100: 'w100',
  FontWeight.w200: 'w200',
  FontWeight.w300: 'w300',
  FontWeight.w400: 'w400',
  FontWeight.w500: 'w500',
  FontWeight.w600: 'w600',
  FontWeight.w700: 'w700',
  FontWeight.w800: 'w800',
  FontWeight.w900: 'w900',
  FontWeight.normal: 'normal',
  FontWeight.bold: 'bold',
};
