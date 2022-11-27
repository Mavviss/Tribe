class Question
{
  final String quest;
  final List<Answer> answers;
  bool isLocked;
  Answer? selectedOption;

  Question({
    required this.quest,
    required this.answers,
    this.isLocked = false,
    this.selectedOption,
  });
}
class Answer{
  final String text;
  final bool isCorrect;
  const Answer({
    required this.text,
    required this.isCorrect,
  });

}
final questions = [
  Question(quest: 'quest', answers: [
    const Answer(text: 'Câu trả lời 1', isCorrect: true),
    const Answer(text: 'Câu trả lời 2', isCorrect: true),
    const Answer(text: 'Câu trả lời 3', isCorrect: true),
    const Answer(text: 'Câu trả lời 4', isCorrect: true),
    ]
  )
];
class ValuesGame {
  static int seconds = 15;
  static int heart = 100;
  static int delay = 800; //miniseconds
}