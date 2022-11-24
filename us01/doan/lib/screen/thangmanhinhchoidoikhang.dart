import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                  padding: EdgeInsets.only(bottom: 200),
                  margin: EdgeInsets.all(100),
                  child: Image.asset('images/Congrats.png'),
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 350, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Text(
                          'YAH! CHÚC MỪNG BẠN ĐÃ GIÀNH CHIẾN THẮNG',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                right:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text('Điểm'),
                                Text('Điểm'),
                                Text('Điểm'),
                                Text('Điểm'),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text('Điểm'),
                                Text('Điểm'),
                                Text('Điểm'),
                                Text('Điểm'),
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
          ],
        ),
      ),
    );
  }
}