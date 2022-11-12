import 'dart:async';

import 'package:flutter/material.dart';

//import '../models/question.dart';

class Battle extends StatefulWidget {
  const Battle({super.key});

  @override
  State<Battle> createState() => _BattleState();
}
class _BattleState extends State<Battle> {
  int timeleft = 30;
  void startTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              top_layout(),
              SizedBox(
                child: Container(
                    margin: EdgeInsets.all(19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Câu hỏi: Tự nhiên"),
                        Row(
                          children: [
                            Image.asset(
                              "images/leaf.png",
                              height: 20,
                            ),
                            Text("$timeleft"),
                          ],
                        ),
                      ],
                    )),
              ),
            //  _listAnswer(),
            ],
          ),
        ),
      ),
    );
  }
  // GestureDetector _listAnswer() {
  //   return GestureDetector(
  //     onTap: () => {},
  //     child: Container(
  //       height: MediaQuery.of(context).size.height / 1.5,
  //       child: PageView.builder(
  //         physics: const NeverScrollableScrollPhysics(),
  //         itemCount: questions.length,
  //         itemBuilder: ((context, index) {
  //           final _question = questions[index];
  //           return buildQuestion(_question);
  //         }),
  //       ),
  //     ),
  //   );
  // }
  // Padding buildQuestion(Question question) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Column(
  //       children: [
  //         Container(
  //           height: MediaQuery.of(context).size.height / 5,
  //           width: MediaQuery.of(context).size.width / 1,
  //           decoration: BoxDecoration(
  //               border: Border.all(width: 2),
  //               borderRadius: BorderRadius.all(Radius.circular(20))),
  //           child: Column(children: [
  //             Text(question.quest),
  //           ]),
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //         // Expanded(
  //         //     child: Answer(
  //         //   question: question,
  //         // ))
  //       ],
  //     ),
  //   );
  // }
  Row top_layout() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
      ),
      Text(timeleft.toString()),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
      ),
    ]);
  }
}
class Answer extends StatelessWidget {
 // final Question question;
  const Answer({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // children: question.answers
        //     .map(
        //       (answer) => Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 45,
        //           padding: const EdgeInsets.all(10),
        //           decoration:  BoxDecoration(
        //             color: Color.fromRGBO(240, 240, 240, 1),
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //             border: Border.all(width: 1, color: Colors.black),
        //           ),
        //           child: Row(
        //             children: [
        //               Text(
        //                 answer.text,
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     )
        //     .toList(),
      ),
    );
  }
}
