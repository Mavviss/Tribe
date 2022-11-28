import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'information.dart';

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
                  padding: const EdgeInsets.fromLTRB(45, 350, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                            'ÔI KHÔNG! BẠN ĐÃ THUA RỒI :(',
                            style: TextStyle(fontSize: 20),
                          
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ), Container(
                          child: Row(
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
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Inforplayer(),
                                          ),
                                        );
                                      },
                                      child: Container(
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
                                      child: Container(
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
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Text('Bạn có muón chơi tiếp không?'),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () {}, child: Text('Không'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(150,50),
                  side: BorderSide(width: 1),
                  primary: Colors.black,
                ),
                
                ),
                OutlinedButton(onPressed: () {}, child: Text('Có'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(150,50),
                  side: BorderSide(width: 1),
                  primary: Colors.black,
                ),
                
                ),               
              ],
            )
          ],
        ),
      ),
    );
  }
}
