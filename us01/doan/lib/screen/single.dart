import 'dart:async';
import 'package:doan/screen/thangmanchoidon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../components/score.dart';
import '../models/question.dart';
import 'chonchedo.dart';

class Single extends StatefulWidget {
  const Single({super.key, required this.totalTime, required this.questions});
  final int totalTime;
  final List<Question> questions;
  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  late int _currentTime;
  late int numberquestion = 1;
  late Timer _timer;
  int _currentIndex = 0;
  String _selectedAnswer = '';
  int _score = 1;
  int timeleft = 30;
  void initState() {
    super.initState();
    _currentTime = widget.totalTime;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(_currentTime);
      setState(() {
        _currentTime -= 1;
      });
      if (_currentTime == 0) {
        _timer.cancel();
        pushResultScreen(context);
      }
    });
  }

  void pushResultScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => WinSingle(
          questions: widget.questions,
          score: _score,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[_currentIndex];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 138, 113, 112),
                Color.fromARGB(255, 103, 103, 112)
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              SizedBox(
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      LinearProgressIndicator(
                           backgroundColor: Color(0xFFB4B4B4),
                           valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 118, 134, 207)),
                        value: _currentTime / widget.totalTime,
                      ),
                      Center(
                        child: Text(
                          _currentTime.toString(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 33, 33),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Câu ' + numberquestion.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 10, 10, 10),
                ),
              ),
              SizedBox(height: 10),
              Text(
                currentQuestion.question,
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 18, 18),
                  fontSize: 24,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final answer = currentQuestion.answers[index];
                    return AnswerTile(
                      isSelected: answer == _selectedAnswer,
                      answer: answer,
                      correct: currentQuestion.correct,
                      onTap: () {
                        setState(() {
                          _selectedAnswer = answer;
                          numberquestion++;
                          print(_score);
                        });

                        if (answer == currentQuestion.correct) {
                          _score *= 2 + _currentTime;
                        }
                        Future.delayed(Duration(milliseconds: 300), () {
                          if (_currentIndex == widget.questions.length - 1) {
                            pushResultScreen(context);
                            return;
                          }
                          setState(() {
                            _currentIndex++;
                            _selectedAnswer = '';
                          });
                        });
                      },
                    );
                  },
                  itemCount: currentQuestion.answers.length,
                ),
              ),
              _help(),
            ],
          ),
        ),
      ),
    );
  }

  Row _help() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.width / 4,
              decoration: const BoxDecoration(
                color: Color(0xffCDC1C5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 3.0, left: 15),
              child: Text(
                "50:50",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 80,
                top: 20,
              ),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width / 15,
                  child: SvgPicture.asset('images/50.svg')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 80),
              child: Row(
                children: [
                  const Text('-3'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                    width: MediaQuery.of(context).size.height / 40,
                    child: SvgPicture.asset(
                      "images/leaf.svg",
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(width: 15),
        GestureDetector(
          onTap: () {},
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.width / 4,
              decoration: const BoxDecoration(
                color: Color(0xffCDC1C5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 3.0, left: 15),
              child: Text(
                "+30s",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 60,
                top: 20,
              ),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                  child: Image.asset('images/+30s.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 80),
              child: Row(
                children: [
                  const Text('-3'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                    width: MediaQuery.of(context).size.height / 40,
                    child: SvgPicture.asset(
                      "images/leaf.svg",
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(width: 15),
        GestureDetector(
          onTap: () {},
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.width / 4,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 235, 238),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 3.0, left: 15),
              child: Text(
                "Next",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 60,
                top: 20,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                child: SizedBox(
                  child: SvgPicture.asset('images/next.svg'),
                  height: 23,
                  width: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 80),
              child: Row(
                children: [
                  const Text('-3'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                    width: MediaQuery.of(context).size.height / 40,
                    child: SvgPicture.asset(
                      "images/leaf.svg",
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class AnswerTile extends StatelessWidget {
  const AnswerTile({
    Key? key,
    required this.isSelected,
    required this.answer,
    required this.correct,
    required this.onTap,
  }) : super(key: key);
  final bool isSelected;
  final String answer;
  final String correct;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        onTap: () => onTap(),
        title: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
            color:
                isSelected ? Color.fromARGB(255, 192, 172, 172) : Colors.black,
          ),
        ),
      ),
    );
  }

  Color get cardColor {
    if (!isSelected) return Color.fromARGB(255, 231, 226, 226);
    if (answer == correct) {
      return Color.fromARGB(255, 119, 219, 189);
    }
    return Color.fromARGB(255, 129, 10, 10);
  }
}
