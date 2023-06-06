class Answer {
  String identifier;
  String answers;
  Answer({
    required this.identifier,
    required this.answers,
  });
}

class Question {
  String id;
  String question;
  String correct_answer;
  List<Answer> Answers;
  Question({
    required this.id,
    required this.Answers,
    required this.correct_answer,
    required this.question,
  });
}
