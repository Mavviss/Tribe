import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../screen/Home.dart';
import '../screen/Rank.dart';
import '../screen/shop.dart';

class bottom extends StatefulWidget {
  const bottom({
    Key? key,
  }) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedpage = 1;
  int temp = 0;
  List<Widget> _pageoption = [
    Shop(),
    Home(),
    Rank(),
  ];

  void select(int indexx) {
    setState(() {
      selectedpage = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(
            icon: SvgPicture.asset(
              "images/shop.svg",
              height: 2,
              width: 2,
            ),
            title: "Cửa hàng "),
        TabItem(icon: SvgPicture.asset("images/home.svg"), title: "Trang chủ"),
        TabItem(icon: SvgPicture.asset("images/ranking.svg"), title: "Xếp hạng")
      ],
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffCDC1C5),
            Color(0xffCDC1C5)
          ]),
      initialActiveIndex: selectedpage,
      onTap: select,
      style: TabStyle.flip,
    );
  }
}
