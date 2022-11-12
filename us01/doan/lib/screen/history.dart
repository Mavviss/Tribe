import 'dart:ffi';

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
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.keyboard_return_outlined),
      ),
      bottomNavigationBar: Container(
          color: Colors.cyan,
          child: TabBar(
            // màu những icon khi dc chọn vào
            labelColor: Colors.black,
            //màu icon
            unselectedLabelColor: Colors.red,

            controller: _controller,
            tabs: const <Widget>[
              Tab(
                text: "chơi đơn",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "chơi đối kháng",
                icon: Icon(Icons.shop),
              ),
            ],
          )),
      body: TabBarView(
        controller: _controller,
        children: const <Widget>[
          Center(child: ChoiDon()),
          Center(
            child: Text('cửa hàng',
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class ChoiDon extends StatelessWidget {
  const ChoiDon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
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
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: NetworkImage(
                                  'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Tên tài khoản'),
                              Text('highsouce'),
                              Text('thời gian chơi'),
                              Text('màn chơi')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //kết thúc
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: NetworkImage(
                                  'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Tên tài khoản'),
                              Text('highsouce'),
                              Text('thời gian chơi'),
                              Text('màn chơi')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: NetworkImage(
                                  'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Tên tài khoản'),
                              Text('highsouce'),
                              Text('thời gian chơi'),
                              Text('màn chơi')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: NetworkImage(
                                  'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Tên tài khoản'),
                              Text('highsouce'),
                              Text('thời gian chơi'),
                              Text('màn chơi')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: NetworkImage(
                                  'https://cdngarenanow-a.akamaihd.net/webmain/static/pss/lol/items_splash/akali_13.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Tên tài khoản'),
                              Text('highsouce'),
                              Text('thời gian chơi'),
                              Text('màn chơi')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
