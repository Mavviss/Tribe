import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../models/question.dart';
import 'chonchedo.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  int timeleft = 30;
//   Timer? timer;
//   startTimer() {
//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         seconds--;
//         if (seconds < 0 && heart > 0) {
//           Question++;
//           heart--;

//           seconds = ValuesGame.seconds;
//         }
//         if (heart <= 0) {
//           heart = 0;
//           seconds = 0;
//           isGameOver = true;
//         }
//       });
//     });
//   }

  bool isGameOver = false;
  @override
  // void initState() {
  //   super.initState();
  //   quiz = getQuiz();
  //   startTimer();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            progessbar(),
            const SizedBox(
              height: 20,
            ),
            const Text("Câu hỏi: Tự nhiên"),
            _listAnswer(),
            SizedBox(
              height: 40,
            ),
            _help(),
          ],
        ),
      ),
    );
  }

  Padding progessbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3F4768), width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(children: [
          LayoutBuilder(
            builder: (context, constrains) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 18, 188, 131),
                border: Border.all(color: const Color(0xFF3F4768), width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('$timeleft'),
                ]),
          ),
        ]),
      ),
    );
  }

  Row _help() {
    return Row(
      children: [
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
                color: Color(0xffCDC1C5),
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

  SizedBox _listAnswer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.7,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: questions.length,
        itemBuilder: ((context, index) {
          final _question = questions[index];
          return buildQuestion(_question);
        }),
      ),
    );
  }

  Padding buildQuestion(Question question) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(240, 240, 240, 1),
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(question.quest),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Answer(
            question: question,
          ))
        ],
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final Question question;
  const Answer({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: question.answers
            .map(
              (answer) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 240, 240, 1),
                      border:
                          Border.all(color: const Color(0xFF3F4768), width: 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Text(
                        answer.text,
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
