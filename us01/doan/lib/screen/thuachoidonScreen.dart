import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoseSingle extends StatelessWidget {
  const LoseSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 200),
                    margin: EdgeInsets.all(100),
                    child: Image.asset('images/Anotherday.png'),
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 330, left: 50),
                    child: Text(
                      'ÔI KHÔNG! BẠN ĐÃ THUA RỒI :(',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 350, 0, 0),
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        Row(
                          children: const [
                            Text('Số câu'),
                            Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text('1/20'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text('Điểm số'),
                            Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text('10'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Kinh nghiệm',
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text('+1'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              'Level',
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 110),
                              child: Text('+30'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(child: Text('Bạn có muốn chơi lại không')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Không'),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      side: BorderSide(width: 1),
                      primary: Colors.black,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Có'),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      side: BorderSide(width: 1),
                      primary: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
