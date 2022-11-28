import 'package:doan/screen/Rank.dart';
import 'package:flutter/material.dart';
import './rank.dart';
import './shop.dart';
import './chonchedo.dart';

class Start extends StatefulWidget {
  const Start({super.key});
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: GestureDetector(
              child: Icon(
                Icons.settings,
                size: 50,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) =>
                        const Shop()), // sửa lại đường dẫnnnnnn
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: GestureDetector(
              child: Icon(
                Icons
                    .expand_circle_down, // hông biết dấu chấm thann keyword nàooooo
                size: 50,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) =>
                        const Shop()), // sửa lại đường dẫnnnnnn
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
          ),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Chào mừng bạn đến với bộ tộc TriBe',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
    );
  }
}
