import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/components/appbar_custom.dart';
import 'package:doan/screen/Rank.dart';
import 'package:doan/screen/single.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/actionbutton.dart';
import '../components/bottom.dart';
import '../models/question.dart';
import 'dart:convert';
//màn chơi có nhiều bộ câu hỏi
class SelectType extends StatefulWidget {
  const SelectType({super.key});

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  List<String> Toppic = [
    "tự nhiên",
    "công nghệ",
    "khoa học",
    "Xã hội",
    "Thể thao",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Header(Color_: Colors.transparent),
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 216, 169, 167), Color.fromARGB(255, 204, 204, 216)]),
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: Toppic.length,
                  itemBuilder: ((context, index) {
                    return StreamBuilder(
                      stream: FirebaseFirestore.instance
                         .collection('question')
                          .where('topic',isEqualTo: 'tự nhiên') 
                          .orderBy('level', ).limit(10)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        final questionDocs = snapshot.data!.docs;
                        final question = questionDocs
                            .map((e) => Question.fromQueryDocumentSnapshot(e))
                            .toList();
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Single(
                                  totalTime: 60,
                                  questions: question,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                child: Center(
                                    child: Text(
                                  Toppic[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )),
                                height: size.width / 4,
                                width: size.height / 3,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffCDC1C5),
                                        Color(0xffCDC1C5)
                                      ]),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 16, 86, 34),
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  })),
            ),
          ],
        ));
  }
}
