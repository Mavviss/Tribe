import 'dart:async';

import 'package:flutter/material.dart';
import '../models/History.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List player = [
    "player 1",
    "player 2",
    "player 3",
    "player 4",
    "player 1",
    "player 2",
    "player 3",
    "player 4",
    "player 1",
    "player 2",
    "player 3",
    "player 4",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: 'Single Player',
            ),
            Tab(
              text: 'Battle player',
            )
          ]),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.jpg"),
                    fit: BoxFit.cover),
              ),
              child: ListView.builder(
                  itemCount: player.length,
                  itemBuilder: (context, index) => Singlerank(
                        child: player[index],
                      )),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.jpg"),
                    fit: BoxFit.cover),
              ),
              child: ListView.builder(
                  itemCount: player.length,
                  itemBuilder: (context, index) => BattleRank(
                        child: player[index],
                      )),
            ),
          ]),
        ),
      ),
    );
  }

  ListView _lstPlayer() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: player.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(width: 1),
              ),
              child: Text(player[index]),
            ),
          );
        }));
  }
}
