import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:doan/screen/information.dart';
import 'package:doan/screen/setting.dart';
import 'package:doan/screen/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  dynamic Color_ = Colors.blue;
  @override
  Size get preferredSize => const Size.fromHeight(60);
  Header({
    Key? key,
    required this.Color_,
  }) : super(
          key: key,
  );
  @override
  Widget build(BuildContext context) {
    return AppBar(
     automaticallyImplyLeading: false,
      backgroundColor: this.Color_,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Expanded(
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
                             Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Inforplayer()),
                              );
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
                                  ("https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
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
                          onPressed: () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Shop(),
                            ),
                          );

                          },
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
                          onPressed: () {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Shop(),
                            ),
                          );
                          },
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
                SizedBox(
                  width: 40,
                  child: IconButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  setting(),
                            ),
                          );
                    },
                    icon: SvgPicture.asset("./images/setting.svg"),
                    tooltip: "Cài đặt",
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
