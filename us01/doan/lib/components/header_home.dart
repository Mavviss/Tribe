import 'package:flutter/material.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
