// A class representing a question with answer choices and associated facts
class QuestionModel {
  String? question; // The question text
  Map<String, bool>?
      answers; // A map of answer choices with their correctness (true or false)
  String facts;

  // Constructor to initialize the QuestionModel
  QuestionModel(this.question, this.answers, this.facts);
}
