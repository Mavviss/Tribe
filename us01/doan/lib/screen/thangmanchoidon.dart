import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WinSingle extends StatelessWidget {
  const WinSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 200),
                  margin: EdgeInsets.all(100),
                  child: Image.asset('images/Congrats.png'),
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 350, 0, 0),
                    child: Column(
                      children: [
                         const Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text('YAH! CHÚC MỪNG BẠN ĐÃ CHIẾN THẮNG'),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: const[
                            Text('Level'),
                            Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text('Level'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: const[
                            Text('Level'),
                            Padding(
                              padding:  EdgeInsets.only(left: 100),
                              child: Text('Level'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: const[
                            Text('Level',),
                            Padding(
                              padding:  EdgeInsets.only(left: 100),
                              child: Text('Level'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text('Level',),
                            Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text('Level'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text('Bạn có muốn chơi lại không'),
                          ],
                        ),
                      ],
                    ),
                ),
              ],
            ),
            const Text('Bạn có muón chơi tiếp không?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Không')),
                ElevatedButton(onPressed: () {}, child: const Text('Có')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

