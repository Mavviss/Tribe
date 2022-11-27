import 'package:doan/screen/header.dart';
import 'package:flutter/material.dart';
import '../screen/login.dart';
import './screen/history.dart';
import './screen/header.dart';
import './screen/appbar_custom.dart';
import './screen/bottom.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: Header(Color_: Colors.transparent,),
       // bottomNavigationBar: bottom(),
        body: Center(),
      ),
      
      );
  }
}
