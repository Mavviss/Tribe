import 'package:doan/screen/Home.dart';
import 'package:doan/screen/history.dart';
import 'package:flutter/material.dart';
import 'components/header_home.dart';
import './screen/shop.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Start());
  }
}
