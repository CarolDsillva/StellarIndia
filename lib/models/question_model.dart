//The following Model contains the logic for the quiz screen

class QuestionModel {
  String? question;
  Map<String, bool>? answers;
  String facts;
  QuestionModel(this.question, this.answers, this.facts);
}
