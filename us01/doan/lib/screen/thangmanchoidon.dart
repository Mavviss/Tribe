import 'package:doan/screen/single.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/question.dart';
class WinSingle extends StatefulWidget {
  const WinSingle({super.key, required this.score, required this.questions});
  final int score;
  final List<Question> questions;
  @override
  State<WinSingle> createState() => _WinSingleState();
}
class _WinSingleState extends State<WinSingle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 00),
            margin: EdgeInsets.all(50),
            child: Image.asset('images/Congrats.png'),
            height: MediaQuery.of(context).size.height / 3,
          ),
          Text('YAH! CHÚC MỪNG BẠN ĐÃ CHIẾN THẮNG'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Score :'),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Text(widget.score.toString()),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Level : '),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text('300 EXP'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Bạn có muón chơi tiếp không?'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/home');
                  },
                  child: const Text('Không')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/chonmangchoi');
                  },
                  child: const Text('Có')),
            ],
          )
        ],
      ),
    );
  }
}
