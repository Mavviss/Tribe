


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/svg.dart';


class bottom extends StatelessWidget {
  const bottom({
    Key? key,
  }) : super(key: key);

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
        TabItem(
            icon: SvgPicture.asset("images/home.svg"), title: "Trang chủ"),
        TabItem(icon: SvgPicture.asset("images/ranking.svg"), title: "Xếp hạng")
      ],
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           Color.fromARGB(255, 247, 246, 246),
            Color.fromARGB(255, 247, 246, 246),
          ]),
          initialActiveIndex: 1,
      style: TabStyle.flip,
         
    );
  }
}