import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'information.dart';

class WinBattle extends StatelessWidget {
  const WinBattle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 250, left: 16),
                  margin: EdgeInsets.all(100),
                  child: Image.asset('images/Congrats.png'),
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 300, 0, 0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 19.0),
                        child: Text(
                          'CHÚC MỪNG BẠN ĐÃ CHIẾN THẮNG',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: const Text(
                          '+ĐNK',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                right:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Inforplayer(),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text('Điểm:                    3'),
                                Text('Thời gian:             3s'),
                                Text('Số câu đúng:       3/20'),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Inforplayer(),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Điểm:                    3'),
                                Text('Thời gian:             3s'),
                                Text('Số câu đúng:       3/20'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text('Bạn có muón chơi tiếp không?'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Không')),
                ElevatedButton(onPressed: () {}, child: Text('Có')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
