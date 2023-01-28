import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/screen/Rank.dart';
import 'package:doan/screen/single.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/question.dart';

class choidon extends StatefulWidget {
  choidon({super.key, required this.questions,required this.toppic});

  final List<Question> questions;
  final String toppic;
  @override
  State<choidon> createState() => _choidonState();
}

class _choidonState extends State<choidon> {
   var questions1;
  late List<Question> questions2;
  late List<Question> questions3;
  late List<Question> questions4;
  late List<Question> questions5;
  late List<Question> questions6;
  late List<Question> questions7;
  late List<Question> questions8;
  late List<Question> questions9;
  late List<Question> questions10;
 
@override
void initState() {
    super.initState();
    // for (int i = 0; i < widget.questions.length; i++) {
    //   if (i < 5) {
    //     questions1.add(widget.questions[i]);
    //   }
    //   if (i >= 5 && i <= 10) {
    //     questions2.add(widget.questions[i]);
    //   }
    //   if (i > 10 && i <= 15) {
    //     questions3.add(widget.questions[i]);
    //   }
    //   if (i >= 16 && i <= 20) {
    //     questions4.add(widget.questions[i]);
    //   }
    //   if (i >= 21 && i <= 25) {
    //     questions5.add(widget.questions[i]);
    //   }
    //   if (i >= 26 && i <= 30) {
    //     questions6.add(widget.questions[i]);
    //   }
    //   if (i >= 31 && i <= 35) {
    //     questions7.add(widget.questions[i]);
    //   }
    //   if (i >= 36 && i <= 40) {
    //     questions8.add(widget.questions[i]);
    //   }
    //   if (i >= 41 && i <= 45) {
    //     questions9.add(widget.questions[i]);
    //   }
    //   if (i >= 46 && i <= 50) {
    //     questions9.add(widget.questions[i]);
    //   }
    // }
    // questions1.add(widget.questions[0]);

    print("++++++++++++++++++++chỗ này nè++++++++++++++++++++++++++++++");
    

    print(widget.questions.length);

     print("++++++++++++++++++++++++++++++++++++++++++++++++++++++");
      print("++++++++++++++++++++++++++++++++++++++++++++++++++++++");
       print("++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++");
         print("++++++++++++++++++++++++++++++++++++++++++++++++++++++");

  }
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Chọn level",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
        ),
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Row(children: [
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 0,
                                        limit: 47,
                                      )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 42, 42)),
                            ),
                            child: Center(
                              child: Text("Level 1-3"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //  Text('số câu hỏi : ${questions.length - 11}'),
                      //man1
                      InkWell(
                        onTap: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 10,
                                        limit: 37,
                                      )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 42, 42)),
                            ),
                            child: Center(
                              child: Text("Level 6-9"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),     
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 20,
                                        limit: 27,
                                      )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 42, 42)),
                            ),
                            child: Center(
                              child: Text("Level 12-15"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //  Text('số câu hỏi : ${questions.length - 11}'),
                      //man 5
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 30,
                                        limit: 17,
                                      )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 42, 42)),
                            ),
                            child: Center(
                              child: Text("Level 18-21"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //  Text('số câu hỏi : ${questions.length - 11}'),
                      //man 7
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 40,
                                        limit: 7,
                                      )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 42, 42)),
                            ),
                            child: Center(
                              child: Text("Level 24-27"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // man 9
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 5,
                                        limit: 42,
                                      )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 3.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 43, 42, 42)),
                              ),
                              child: Center(
                                child: Text("Level 3-6"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ///////////man 2
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 15,
                                        limit: 32,
                                      )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 3.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 43, 42, 42)),
                              ),
                              child: Center(
                                child: Text("Level 9-12"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ///////////////////man 4
                        InkWell(
                          onTap: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 25,
                                        limit: 22,
                                      )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 3.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 43, 42, 42)),
                              ),
                              child: Center(
                                child: Text("Level 15-18"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ///////////man 6
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 35,
                                        limit: 12,
                                      )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 3.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 43, 42, 42)),
                              ),
                              child: Center(
                                child: Text("Level 21-24"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ////////////////man 8
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single(
                                      totalTime : 60,
                                        questions: widget.questions,
                                        toppic: widget.toppic,
                                        index: 40,
                                        limit: 1,
                                      )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 3.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 43, 42, 42)),
                              ),
                              child: Center(
                                child: Text("Level 27-30"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
