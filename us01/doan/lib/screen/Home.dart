import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:tribe_duan/layout/rank.dart';
//import 'package:tribe_duan/layout/shop.dart';
//import 'chonchedo.dart';
import '../screen/forgot_password.dart';
import '../screen/login.dart';
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
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(children: [ 
                SizedBox(height: size.height/3,),
                Text("Chào mừng bạn đến với bộ tộc TriBe"),
                
                SizedBox(height: size.height/20,),
                MaterialButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const forgotPasswordPage(),
                      ),
                    );
                  }),
                  height: size.height / 20,
                  minWidth: size.height / 5,
                  color: const Color.fromRGBO(240, 240, 240, 1),
                  child: const Icon(Icons.play_circle_outline),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => const LoginPage()));
                      },
                      child: Image.asset(
                        "images/Shop.png",
                        width: size.width / 8,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => const LoginPage()));
                      },
                      child: Image.asset(
                        "images/Champion.png",
                        height: size.height / 2.2,
                        width: size.width / 8,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        )
    );
  }
}
