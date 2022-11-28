import 'dart:async';

import 'package:doan/components/appbar_custom.dart';
import 'package:doan/screen/single.dart';
import 'package:flutter/material.dart';

import 'information.dart';

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
      appBar: Header(Color_: Colors.transparent),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
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
                          setState(() {
                            startTime();
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Single(),
                              ));
                        },
                        child: Container(
                          width: 200,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            level[index],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
