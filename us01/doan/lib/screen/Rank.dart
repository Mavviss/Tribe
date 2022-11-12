import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:tribe_duan/layout/chonchedo.dart';
import '../models/ListSingle.dart';
class Rank extends StatefulWidget {
  const Rank({super.key});
  @override
  State<Rank> createState() => _RankState();
}
class _RankState extends State<Rank> {
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
          automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),)
          ],
           title: const Text("Ranking"),
           centerTitle: true,
        bottom: TabBar(tabs: [Tab(text: 'Single Player',),Tab(text: 'Battle player',)]),
        ),
        body: TabBarView(
          children:[
            Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
            ),
            child: ListView.builder(
              itemCount: player.length,
              itemBuilder: (context, index) =>  Singlerank(
              child: player[index],
            )),),
            Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
            ),
            child: ListView.builder(
              itemCount: player.length,
              itemBuilder: (context, index) =>  Singlerank(
              child: player[index],
            )),),
          ]
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
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(player[index]),
            ),
          );
        }));
  }
  
}
