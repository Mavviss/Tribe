import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/answr_widget.dart';
import '../models/question.dart';
import 'chonchedo.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
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
                        const Text(
                          "Câu hỏi: Tự nhiên",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 33,
                              height: 25,
                              child: SvgPicture.asset(
                                "images/leaf.svg",
                              ),
                            ),
                            Text("$timeleft"),
                          ],
                        ),
                      ],
                    )),
              ),
              _listAnswer(),
              _help(),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Picklevel(),
                    ),
                  );
                },
                child: Text(
                  "Trở về",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
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
          onPressed: () {
            //chức năng trợ giúp
          },
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Text(
            "50:50",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        MaterialButton(
          onPressed: () {
            //chức năng trợ giúp
          },
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Text("+30s"),
        ),
        MaterialButton(
          onPressed: () {
            //chức năng trợ giúp
          },
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

// khung câu hỏi nằm ở đây
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

// header của thằng đồng nó nằm ở đây
  Container top_layout() {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: const Color.fromRGBO(240, 240, 240, 1),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Padding(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
          ),
        ),
        Text(timeleft.toString()),
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
      ]),
    );
  }
}

// mấy câu trả lời nó nằm ở đây
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
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        answer.text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
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
