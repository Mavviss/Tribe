import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //     //image: AssetImage('assets/background.png'),
                //     fit: BoxFit.cover)),
                ),
            child: Center(
              child: Text('cap'),
            ),
          ),
        ),
      ),
    );
  }
}
