
// import 'package:doan/components/actionbutton.dart';
// import 'package:doan/screen/Rank.dart';
// import 'package:flutter/material.dart';

// import '../models/question.dart';
// import '../screen/single.dart';

// class ResultScreen extends StatelessWidget {
//   const ResultScreen({Key? key, required this.score, required this.questions})
//       : super(key: key);

//   final int score;
//   final List<Question> questions;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox.expand(
//         child: Container(
//           color: Color(0xff152B42),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Result:  $score/ ${questions.length}',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//               SizedBox(height: 40),
//               ActionButton(
//                 title: 'Play Again',
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => Single(
//                         totalTime: 60,
//                         questions: questions,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               SizedBox(height: 40),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
