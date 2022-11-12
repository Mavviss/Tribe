import 'dart:async';

import 'package:doan/screen/information.dart';
import 'package:doan/screen/shop.dart';
import 'package:flutter/material.dart';
// import 'package:tribe_duan/layout/battle.dart';
// import 'package:tribe_duan/layout/chonmanchoi.dart';
// import 'package:tribe_duan/layout/single.dart';
import '../main.dart';
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
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              top_layout(),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    const Text("Chọn chế độ chơi"),
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
                          style: TextStyle(fontSize: 20),
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const Battle(),
                            //   ),
                            // );
                          }),
                          color: Colors.white,
                          child: const Text(
                            "Chơi đối kháng",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
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

  Padding top_layout() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromRGBO(225, 225, 225, 1)),
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
              GestureDetector(
                onTap: () => {
                   Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const  Inforplayer())),
                },
                child: Container(
                  width: 70,
                  height: 45,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                   Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const  Shop())),
                },
                child: Container(
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
              ),),
               Icon(Icons.settings)
            ],
          ),
        ),
      ),
    );
  }
}
