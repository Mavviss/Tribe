import 'dart:async';
import 'package:flutter/material.dart';
import '../models/question.dart';
import 'chonchedo.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
// int seconds = ValuesGame.seconds;
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
                height: 20,
              ),
              const Text("Câu hỏi: Tự nhiên"),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF3F4768), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(children: [
                    LayoutBuilder(
                      builder: (context, constrains) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('30'),
                          ]),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _listAnswer(),
              SizedBox(
                height: 20,
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Text("50:50"),
        ),
        MaterialButton(
          onPressed: () {},
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Text("+30s"),
        ),
        MaterialButton(
          onPressed: () {},
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Text("Next "),
        ),
      ],
    );
  }

  SizedBox _listAnswer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(children: [
              Text(question.quest),
            ]),
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

  Row top_layout() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const Padding(
        padding: EdgeInsets.all(2),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
        ),
      ),
      // Text(timeleft.toString()),
      Row(
        children: [
          Image.asset(
            "images/Heart.png",
            width: 20,
            height: 25,
            color: Colors.red,
          ),
          Text("1"),
        ],
      )
    ]);
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
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
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
