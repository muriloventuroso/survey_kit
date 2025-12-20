import 'package:flutter/material.dart';
import 'package:survey_kit/src/configuration/survey_configuration.dart';
import 'package:survey_kit/src/view/widget/question_answer.dart';

mixin AnswerMixin<T extends StatefulWidget, R> on State<T> {
  void onChange(R? result) {
    onValidationChanged = isValid(result);
    onStepResultChanged = result;

    // Auto next: automatically go to next step when answer is valid
    final questionAnswer = QuestionAnswer.of(context);
    if (questionAnswer.step.autoNext && isValid(result)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final surveyConfiguration = SurveyConfiguration.of(context);
        surveyConfiguration.surveyController.nextStep(
          context,
          questionAnswer.stepResult,
        );
      });
    }
  }

  bool isValid(R? result);

  set onValidationChanged(bool isValid) {
    QuestionAnswer.of(context).setIsValid(isValid);
  }

  set onStepResultChanged(R? stepResult) {
    QuestionAnswer.of(context).setStepResult(stepResult);
  }
}
