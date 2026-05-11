import 'package:flutter/material.dart';
import 'package:survey_kit/src/model/content/text_content.dart';

class AnswerQuestionText extends StatelessWidget {
  const AnswerQuestionText({
    super.key,
    this.text,
    this.textContent,
  });

  final String? text;
  final TextContent? textContent;

  @override
  Widget build(BuildContext context) {
    final content = textContent;
    final fallbackText = text;

    if (content == null && fallbackText == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: content?.createWidget() ?? Text(fallbackText!),
    );
  }
}
