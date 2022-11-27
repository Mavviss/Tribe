import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../models/appBar.dart';

class Waitbattle extends StatefulWidget {
  const Waitbattle({super.key});

  @override
  State<Waitbattle> createState() => _WaitbattleState();
}

class _WaitbattleState extends State<Waitbattle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          appBar(),
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 130, 0, 450),
          child: Row(
            children: [
              Positioned(
                top: 0,
                child: GestureDetector(
                  onTap: () {
                    // ontap hình avatar
                  },

                  //chỗ bắt đầu
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffb92b27), Color(0xff1565c0)]),
                        border: Border.all(
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: Container(
                      decoration: BoxDecoration(
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [Color(0xffee9ca7), Color(0xffffdde1)]),
                            width: 6,
                          ),
                          borderRadius: BorderRadius.circular(7)),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(7)),
                        child: Image.network(
                          ("https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/278377002_3147115085544105_8279216043983986656_n.jpg?stp=dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=K4q5CEP3Je8AX-knRaH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCCCoDM_3SvKyYSK5zptfJ7i9sNmBl59BMFBXvE-6m78g&oe=6384D8E6"),
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text('Player 1')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(150, 200, 150, 150),
          child: Image(
            image: AssetImage('images/VS.png'),
            height: 200,
            width: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(180, 350, 0, 0),
          child: Row(
            children: [
              Text('Player 1'),
              SizedBox(width: 20),
              Positioned(
                top: 0,
                child: GestureDetector(
                  onTap: () {
                    // ontap hình avatar
                  },

                  //chỗ bắt đầu
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffb92b27), Color(0xff1565c0)]),
                        border: Border.all(
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: Container(
                      decoration: BoxDecoration(
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [Color(0xffee9ca7), Color(0xffffdde1)]),
                            width: 6,
                          ),
                          borderRadius: BorderRadius.circular(7)),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(7)),
                        child: Image.network(
                          ("https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/278377002_3147115085544105_8279216043983986656_n.jpg?stp=dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=K4q5CEP3Je8AX-knRaH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCCCoDM_3SvKyYSK5zptfJ7i9sNmBl59BMFBXvE-6m78g&oe=6384D8E6"),
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
