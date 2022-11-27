import 'package:doan/screen/Rank.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:flutter_svg/flutter_svg.dart';

class History extends StatefulWidget {
  const History({
    super.key,
  });

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  late TabController _controller;
  // phải có 1 hàm để lưu trữ số lượng tab
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  tooltip: "Cài đặt",
                )
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            const Text(
              'Lịch sử đấu',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                        labelColor: Colors.cyan,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: 'chơi đơn',
                          ),
                          Tab(
                            text: 'chơi dối kháng',
                          )
                        ]),
                  ),
                  Container(
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                      ),
                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            child: LichSuChoiDon(),
                          ),
                          Container(
                            child: LichSuChoiDoiKhang(),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LichSuChoiDon extends StatelessWidget {
  const LichSuChoiDon({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        itemlichsuchoidon(rank: '1*'),
        itemlichsuchoidon(rank: '2'),
        itemlichsuchoidon(rank: '3'),
        itemlichsuchoidon(rank: '4'),
        itemlichsuchoidon(rank: '5'),
        itemlichsuchoidon(rank: '6'),
      ],
    ));
  }
}

class itemlichsuchoidon extends StatefulWidget {
  itemlichsuchoidon({super.key, required this.rank});
  String rank;
  @override
  State<itemlichsuchoidon> createState() => _itemlichsuchoidonState();
}

class _itemlichsuchoidonState extends State<itemlichsuchoidon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 20, 4, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.rank,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text('Câu hỏi'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: OutlinedButton(onPressed: () {}, child: Text('Thắng')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LichSuChoiDoiKhang extends StatelessWidget {
  const LichSuChoiDoiKhang({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        itemlichsuchoidoikhang(rank: '1*'),
        itemlichsuchoidoikhang(rank: '2*'),
        itemlichsuchoidoikhang(rank: '3*'),
        itemlichsuchoidoikhang(rank: '4*'),
        itemlichsuchoidoikhang(rank: '5*'),
        itemlichsuchoidoikhang(rank: '6*'),
      ],
    ));
  }
}

class itemlichsuchoidoikhang extends StatefulWidget {
  itemlichsuchoidoikhang({super.key, required this.rank});
  String rank;
  @override
  State<itemlichsuchoidoikhang> createState() => _itemlichsuchoidoikhangState();
}

class _itemlichsuchoidoikhangState extends State<itemlichsuchoidoikhang> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 20, 4, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                widget.rank,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Level',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    'hạng',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: OutlinedButton(onPressed: () {}, child: Text('Thắng')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
