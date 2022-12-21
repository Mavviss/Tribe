import 'dart:async';
import 'package:doan/components/appbar_custom.dart';
import 'package:doan/screen/information.dart';
import 'package:doan/screen/wait_battle.dart';
import 'package:flutter/material.dart';
import '../components/bottom.dart';
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
      extendBodyBehindAppBar: true,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 250),
              child: Column(
                children: [
                  const Text(
                    "Chọn chế độ chơi",
                    style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectType(),
                        ),
                      );
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Chơi đơn',
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
                            color: Color.fromARGB(255, 16, 86, 34), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Waitbattle(),
                        ),
                      );
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Chơi đối kháng',
                        style: TextStyle(fontSize: 20),
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
                            color: Color.fromARGB(255, 16, 86, 34), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
