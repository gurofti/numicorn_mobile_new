class TrialQuestionAnswer {
  int level;
  dynamic answer;

  TrialQuestionAnswer({required this.level, required this.answer});

  // Cevabı güncelleyen veya ekleyen fonksiyon
  static List<TrialQuestionAnswer> updateOrAddAnswer(
      List<TrialQuestionAnswer> questionAnswers, int level, dynamic newAnswer) {
    var existingAnswer = questionAnswers.firstWhere((qa) => qa.level == level,
        orElse: () => TrialQuestionAnswer(level: level, answer: null));

    if (existingAnswer.answer != null) {
      existingAnswer.updateAnswer(newAnswer);
    } else {
      questionAnswers.add(TrialQuestionAnswer(level: level, answer: newAnswer));
    }

    return questionAnswers;
  }

  // Cevabı güncelleyen metod
  void updateAnswer(dynamic newAnswer) {
    this.answer = newAnswer;
  }
}
