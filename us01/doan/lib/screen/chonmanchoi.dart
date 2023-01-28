import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/components/appbar_custom.dart';
import 'package:doan/screen/Rank.dart';
import 'package:doan/screen/chonlevel.dart';
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
       appBar: AppBar(
               leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ), 
            backgroundColor: Color.fromARGB(0, 194, 162, 162),
            elevation: 0.0,
            title: Text("Gói câu hỏi",style: TextStyle(color: Color.fromARGB(255, 32, 32, 32), fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(     
                image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
              ),
            ),     
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                child: ListView.builder(
                    itemCount: Toppic.length,
                    itemBuilder: ((context, index) {
                      return StreamBuilder(
                        stream: FirebaseFirestore.instance
                           .collection('question')
                            .where('topic',isEqualTo: Toppic[index]) 
                            .orderBy('level',)
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
                                  builder: (context) => choidon(
                                   toppic: Toppic[index],
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
            ),
          ],
        ));
  }
}
