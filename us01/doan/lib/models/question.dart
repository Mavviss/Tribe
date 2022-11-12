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
    const Answer(text: 'Dong dep trai', isCorrect: true),
    const Answer(text: 'Dong dep trai', isCorrect: true),
    const Answer(text: 'Dong dep trai', isCorrect: true),
    const Answer(text: 'Dong dep trai', isCorrect: true),
    
  ])
];
