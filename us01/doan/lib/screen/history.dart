import 'package:doan/screen/Rank.dart';
import 'package:flutter/material.dart';

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
        title: Text(
          'Lịch sử đấu',
          style: TextStyle(color: Colors.red),
          textAlign: TextAlign.center,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: Icon(Icons.keyboard_return_outlined),
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
          borderRadius: BorderRadius.all(Radius.circular(8)),
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
