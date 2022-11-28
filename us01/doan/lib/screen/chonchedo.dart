import 'dart:async';

import 'package:doan/components/appbar_custom.dart';
import 'package:doan/screen/information.dart';
import 'package:doan/screen/wait_battle.dart';
import 'package:flutter/material.dart';

import 'Battle.dart';
import 'chonmanchoi.dart';

//chế độ đối kháng hoặc chơi đơn
class Picklevel extends StatefulWidget {
  const Picklevel({super.key});

  @override
  State<Picklevel> createState() => _PicklevelState();
}

class _PicklevelState extends State<Picklevel> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Header(Color_: Colors.transparent),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    const Text(
                      "Chọn chế độ chơi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: size.width / 4,
                      width: size.height / 3,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            offset: Offset(8.3, 8), // Shadow position
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SelectType(),
                            ),
                          );
                        }),
                        color: Colors.white,
                        child: const Text(
                          "Chơi đơn",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: size.width / 4,
                        width: size.height / 3,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(offset: Offset(8.3, 8), blurRadius: 1),
                          ],
                        ),
                        child: MaterialButton(
                            onPressed: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Waitbattle(),
                                ),
                              );
                            }),
                            color: Colors.white,
                            child: const Text(
                              "Chơi đối kháng",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
