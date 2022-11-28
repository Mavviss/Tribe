import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'chonchedo.dart';

class Inforplayer extends StatefulWidget {
  const Inforplayer({super.key});

  @override
  State<Inforplayer> createState() => _InforplayerState();
}

class _InforplayerState extends State<Inforplayer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 300),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Picklevel(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "images/left-arrow.png",
                      height: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  width: width / 2,
                  height: height / 6,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://coinvn.com/wp-content/uploads/2021/05/717_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDUvZmFmZTZiMjAtZjA1Ny00ODg0LWI1ZTUtOGQ5M2JkNWViZDQ3LmpwZw.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: height / 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Họ và tên'),
                  Text('playername'),
                ],
              ),
              SizedBox(
                height: height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Giới tính'),
                  Text('Nam'),
                ],
              ),
              SizedBox(
                height: height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Hạng xếp hạng'),
                  Text('Thách đấu'),
                ],
              ),
              SizedBox(
                height: height / 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Lịch sử'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
