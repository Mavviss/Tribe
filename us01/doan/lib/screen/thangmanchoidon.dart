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
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text('ÔI KHÔNG! BẠN ĐÃ THUA RỒI :(',),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Level',),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text('Level',),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Level',),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text('Level',),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Level',),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text('Level',),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Level',),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text('Level',),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Bạn có muốn chơi lại không',),
                            
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text('Có')),
                            ElevatedButton(onPressed: (){}, child: Text('Không')),
                          ],
                        )
                      ],
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

