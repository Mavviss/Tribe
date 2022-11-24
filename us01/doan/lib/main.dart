import 'package:doan/screen/chonchedo.dart';
import 'package:doan/screen/chonmanchoi.dart';
import 'package:doan/screen/information.dart';
import 'package:doan/screen/single.dart';
import 'package:doan/screen/thangmanhinhchoidoikhang.dart';
import 'package:doan/screen/thua_man_choi_don.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoseBattle(),
    );
  }
}
