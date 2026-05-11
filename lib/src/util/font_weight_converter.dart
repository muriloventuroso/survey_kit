import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class FontWeightConverter implements JsonConverter<FontWeight, String> {
  const FontWeightConverter();

  static const _fontWeightMap = {
    'w100': FontWeight.w100,
    'w200': FontWeight.w200,
    'w300': FontWeight.w300,
    'w400': FontWeight.w400,
    'w500': FontWeight.w500,
    'w600': FontWeight.w600,
    'w700': FontWeight.w700,
    'w800': FontWeight.w800,
    'w900': FontWeight.w900,
    'normal': FontWeight.normal,
    'bold': FontWeight.bold,
  };

  @override
  FontWeight fromJson(String json) {
    return _fontWeightMap[json] ?? FontWeight.normal;
  }

  @override
  String toJson(FontWeight fontWeight) {
    return _fontWeightMap.entries
        .firstWhere(
          (entry) => entry.value == fontWeight,
          orElse: () => const MapEntry('normal', FontWeight.normal),
        )
        .key;
  }
}

