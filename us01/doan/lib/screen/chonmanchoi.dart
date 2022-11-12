import 'dart:async';

import 'package:doan/screen/single.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//màn chơi có nhiều bộ câu hỏi
class SelectType extends StatefulWidget {
  const SelectType({super.key});

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  List<String> level = [
    "Tự nhiên",
    "Công nghệ",
    "Khoa học",
    "Xã hội",
    "Thể thao",
  ];
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
              top_layout(),
              Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 150, 8, 8),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: level.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const  Single()));
                                },
                          child: Container(
                            width: 200,
                            height: 60,
                            padding: const EdgeInsets.all(10),
                            decoration:  BoxDecoration(
                              
                               border: Border.all(color: Colors.black, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    ),
                                    
                                child: Center(child: Text(level[index], )),
                          ),
                        ));
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding top_layout() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromRGBO(240, 240, 240, 1),),
        child: Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2, bottom: 2),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 8, 20, 5),
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 70,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  border: Border.all(width: 1),
                ),
                child: const Text(
                  "Mavis",
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 2, bottom: 2),
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "images/leaf.png",
                      height: 20,
                    ),
                    const Text("full")
                  ],
                ),
              ),
              const Icon(Icons.settings)
            ],
          ),
        ),
      ),
    );
  }
}