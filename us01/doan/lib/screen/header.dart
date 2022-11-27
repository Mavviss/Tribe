import 'package:doan/screen/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
class header extends StatefulWidget {
  const header({super.key});
  @override
  State<header> createState() => _headerState();
}
class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  // SystemUiOverlay.bottom,
]);
    return  Scaffold(
              extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //container chứa ảnh
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                //color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Mavis',
                              style: TextStyle(color: Colors.black),
                            ))),
                      ),
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
                                    colors: [
                                      Color(0xffb92b27),
                                      Color(0xff1565c0)
                                    ]),
                                border: Border.all(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(7)),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      Color(0xffee9ca7),
                                      Color(0xffffdde1)
                                    ]),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Image.network(
                                  ("https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/278377002_3147115085544105_8279216043983986656_n.jpg?stp=dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=K4q5CEP3Je8AX-knRaH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCCCoDM_3SvKyYSK5zptfJ7i9sNmBl59BMFBXvE-6m78g&oe=6384D8E6"),
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //contaier chứa tim
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                //  color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              '10',
                              style: TextStyle(color: Colors.black),
                            ))),
                      ),
                      Positioned(
                        top: 2,
                        bottom: 2,
                        left: 0,
                        child: SizedBox(
                            width: 27,
                            height: 10,
                            child: SvgPicture.asset(
                              "images/favorite.svg",
                            )),
                      ),
                      Positioned(
                        top: -4,
                        right: -5,
                        child: IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            height: 20,
                            child: SvgPicture.asset(
                              "images/plus.svg",
                            ),
                          ),
                          tooltip: "Mua sinh mạng",
                        ),
                      ),
                    ],
                  ),
                ),

                //container chứa coin
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text('10',
                                    style: TextStyle(color: Colors.black)))),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 3,
                        left: 0,
                        child: SizedBox(
                          width: 33,
                          height: 25,
                          child: SvgPicture.asset(
                            "images/leaf.svg",
                          ),
                        ),
                      ),
                      Positioned(
                        top: -4,
                        right: -5,
                        child: IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                              height: 20,
                              child: SvgPicture.asset(
                                "images/plus.svg",
                              )),
                          tooltip: "Mua ngân lượng",
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("images/setting.svg"),
                  tooltip: "Cài đặt",
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottom(),
       body: Stack(children: <Widget>[
        Positioned.fill(
          //
          child: Image(
            image: AssetImage('images/back2.jfif'),
            fit: BoxFit.fill,
          ),
        ),
      ]
      ),
    );
  }
}





var appbar_custom = AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //container chứa ảnh
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                //color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Mavis',
                              style: TextStyle(color: Colors.black),
                            ))),
                      ),
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
                                    colors: [
                                      Color(0xffb92b27),
                                      Color(0xff1565c0)
                                    ]),
                                border: Border.all(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(7)),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      Color(0xffee9ca7),
                                      Color(0xffffdde1)
                                    ]),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Image.network(
                                  ("https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/278377002_3147115085544105_8279216043983986656_n.jpg?stp=dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=K4q5CEP3Je8AX-knRaH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCCCoDM_3SvKyYSK5zptfJ7i9sNmBl59BMFBXvE-6m78g&oe=6384D8E6"),
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //contaier chứa tim
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                //  color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              '10',
                              style: TextStyle(color: Colors.black),
                            ))),
                      ),
                      Positioned(
                        top: 2,
                        bottom: 2,
                        left: 0,
                        child: SizedBox(
                            width: 27,
                            height: 10,
                            child: SvgPicture.asset(
                              "images/favorite.svg",
                            )),
                      ),
                      Positioned(
                        top: -4,
                        right: -5,
                        child: IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            height: 20,
                            child: SvgPicture.asset(
                              "images/plus.svg",
                            ),
                          ),
                          tooltip: "Mua sinh mạng",
                        ),
                      ),
                    ],
                  ),
                ),

                //container chứa coin
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffCDC1C5),
                                      Color(0xffCDC1C5)
                                    ]),
                                border: Border.all(
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text('10',
                                    style: TextStyle(color: Colors.black)))),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 3,
                        left: 0,
                        child: SizedBox(
                          width: 33,
                          height: 25,
                          child: SvgPicture.asset(
                            "images/leaf.svg",
                          ),
                        ),
                      ),
                      Positioned(
                        top: -4,
                        right: -5,
                        child: IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                              height: 20,
                              child: SvgPicture.asset(
                                "images/plus.svg",
                              )),
                          tooltip: "Mua ngân lượng",
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("images/setting.svg"),
                  tooltip: "Cài đặt",
                )
              ],
            ),
          ),
        ],
      );