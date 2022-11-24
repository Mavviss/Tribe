import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoseBattle extends StatelessWidget {
  const LoseBattle({super.key});

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
                  child: Image.asset('images/Anotherday.png'),
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 350, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Text(
                          'ÔI KHÔNG! BẠN ĐÃ THUA RỒI :(',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                right:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                          ),
                          SizedBox(height: 20,),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
                              ],
                            ),
                          ),
                          Container(
                            
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                          ),
                          SizedBox(height: 20,),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
                                Text('Điểm:            3'),
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
