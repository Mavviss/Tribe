import 'package:flutter/material.dart';
import '../components/header_home.dart';
import './chonchedo.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'something',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Row(children: [
                      Icon(
                        Icons.heart_broken_sharp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'time',
                        style: TextStyle(color: Colors.black),
                      )
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.live_help,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Hearth',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MaterialButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Picklevel(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "images/left-arrow.png",
                          height: 30,
                        )),
                    const Text("CỬA HÀNG TRIBE",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w200))
                  ],
                ),
                SizedBox(height: size.height / 7),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/leaf.png",
                          height: size.width / 15,
                        ),
                        const Text("5"),
                        Container(
                          width: size.height / 7,
                          height: size.width / 10,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1000),
                                bottomRight: Radius.circular(1000)),
                            border: Border.all(width: 2),
                          ),
                          child: const Center(child: Text("10.000VND")),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height / 19),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/leaf.png",
                          height: size.width / 15,
                        ),
                        const Text("30"),
                        Container(
                          width: size.height / 7,
                          height: size.width / 10,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1000),
                                bottomRight: Radius.circular(1000)),
                            border: Border.all(width: 2),
                          ),
                          child: const Center(child: Text("50.000VND")),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height / 19),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/leaf.png",
                          height: size.width / 15,
                        ),
                        const Text("65"),
                        Container(
                          width: size.height / 7,
                          height: size.width / 10,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1000),
                                bottomRight: Radius.circular(1000)),
                            border: Border.all(width: 2),
                          ),
                          child: const Center(child: Text("100.000VND")),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height / 19),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/leaf.png",
                          height: size.width / 15,
                        ),
                        const Text("120"),
                        Container(
                          width: size.height / 7,
                          height: size.width / 10,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1000),
                                bottomRight: Radius.circular(1000)),
                            border: Border.all(width: 2),
                          ),
                          child: const Center(child: Text("200.000VND")),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
