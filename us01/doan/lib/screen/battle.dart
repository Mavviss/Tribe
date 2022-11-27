import 'dart:async';

import 'package:flutter/material.dart';

import '../models/question.dart';
import 'chonchedo.dart';

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
              SizedBox(
                height: 10,
              ),
              progess_bar(),
              const SizedBox(
                height: 20,
              ),
              top_layout(),
              SizedBox(height: 10,),
              const Padding(
                padding:  EdgeInsets.only(left: 200),
                child: Text("Câu hỏi: 1/20"),
              ),
              _listAnswer(),
            ],
          ),
        ),
      ),
    );
  }

  Padding progess_bar() {
    return Padding(
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
                children: const [
                  Text('30'),
                ]),
          ),
        ]),
      ),
    );
  }

  GestureDetector _listAnswer() {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: questions.length,
          itemBuilder: ((context, index) {
            final _question = questions[index];
            return buildQuestion(_question);
          }),
        ),
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
            ),
          ),
        ],
      ),
    );
  }

  Row top_layout() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Score'),
        ],
      ),
      Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Score'),
        ],
      ),
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
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 240, 240, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
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
