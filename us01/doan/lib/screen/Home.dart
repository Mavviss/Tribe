import 'package:doan/screen/Rank.dart';
import 'package:flutter/material.dart';
import '../components/appbar_custom.dart';
import '../components/bottom.dart';
import './rank.dart';
import './chonchedo.dart';
import 'information.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back2.jfif"), fit: BoxFit.fill),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chào mừng bạn đến với bộ tộc TriBe',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 70,
                      width: 200,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                  const Picklevel()), // sửa lại đường dẫnnnnnn
                            ),
                          );
                        },
                        child: Icon(
                          Icons.play_circle_outline_sharp,
                          color: Colors.black,
                          size: 50,
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
