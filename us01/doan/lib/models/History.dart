import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Singlerank extends StatelessWidget {
  const Singlerank({super.key, required this.child});
  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 240, 240, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(
          child,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class BattleRank extends StatelessWidget {
  const BattleRank({super.key, required this.child});
  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 240, 240, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(
          child,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
