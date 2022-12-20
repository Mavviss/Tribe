import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:flutter/src/rendering/stack.dart';

class Rank extends StatefulWidget {
  const Rank({
    Key? key,
  }) : super(key: key);
  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  TabBar(
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        icon: SvgPicture.asset("images/single.svg"),
                      ),
                      Tab(
                        icon:
                            SvgPicture.asset("images/battle_fsium4n7jy4t.svg"),
                      ),
                    ],
                    labelColor: Colors.blue,
                    indicator: RectangularIndicator(
                        bottomLeftRadius: 100,
                        bottomRightRadius: 100,
                        topLeftRadius: 100,
                        topRightRadius: 100,
                        paintingStyle: PaintingStyle.stroke,
                        color: Color(0xffCDC1C5)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.height,
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(
                        children: [
                          ListView(
                            children: [
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                            ],
                          ),
                          ListView(
                            children: [
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                              single(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class single extends StatelessWidget {
  const single({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "images/top1.svg",
                          width: 50,
                          height: 50,
                        ),

                        // Tên player
                        Text("Mavis Vermilion")
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // cấp độ player
            Positioned(
              top: 35,
              left: 200,
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Text(
                  '30',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
            ),
            // lable level
            Positioned(
              top: 19,
              left: 210,
              child: Text(
                "Level",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 35,
              left: 260,
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Text(
                  '2048',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
            ),
            //icon star
            Positioned(
              top: 10,
              right: -10,
              left: 210,
              child: SvgPicture.asset(
                "images/star1.svg",
                width: 30,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
