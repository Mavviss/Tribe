import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/screen/Rank.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/appbar_custom.dart';
import '../components/bottom.dart';
import './rank.dart';
import './shop.dart';
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
    // var name;
    // FirebaseFirestore.instance
    //     .collection('user')
    //     .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
    //     .get()
    //     .then(
    //   (value) {
    //     var user = value.docs.first;
    //     name = user['username'];
    //   },
    // );
    return SafeArea(
      child: Scaffold(
        appBar: Header(Color_: Colors.transparent),
        bottomNavigationBar: bottom(),
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
                      'Chào mừng  đến với bộ tộc TriBe',
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

  //  get() async {
  //   var name;
  //   FirebaseFirestore.instance
  //       .collection('user')
  //       .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
  //       .get()
  //       .then(
  //     (value) {
  //       var user = value.docs.first;
  //       name = user['username'];
  //     },
  //   );

  //   return name;
  // }
}
