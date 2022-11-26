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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: Icon(Icons.keyboard_return_outlined),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Lịch sử đấu',
              textAlign: TextAlign.center,
              style: TextStyle(
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
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                      ),
                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            child: ChoiDon(),
                          ),
                          Container(
                            child: Text('chơi đối kháng'),
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

class ChoiDon extends StatelessWidget {
  const ChoiDon({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                    //copy chỗ này nè
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children:<Widget> [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundImage: NetworkImage(
                                      'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Câu hỏi'),
                                    Text('highsouce'),
                                    Text('thời gian chơi'),
                                    Text('màn chơi'),
                                  ],
                                ),
                              ),
                              OutlinedButton(
                                  onPressed: () {}, child: Text('Đúng'))
                            ],
                          ),
                        ),
                      ),
                    ]
                    //kết thúc
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
