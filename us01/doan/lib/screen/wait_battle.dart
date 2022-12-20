// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gradient_borders/box_borders/gradient_box_border.dart';
// import './battle.dart';
// import '../components/appbar_custom.dart';
// import '../components/bottom.dart';

// class Waitbattle extends StatefulWidget {
//   const Waitbattle({super.key});
//   @override
//   State<Waitbattle> createState() => _WaitbattleState();
// }

// class _WaitbattleState extends State<Waitbattle> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: Header(Color_: Colors.transparent),
//       body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color.fromARGB(255, 102, 95, 97),
//                   Color.fromARGB(255, 165, 152, 157)
//                 ]),
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 35,
//                 child: IconButton(
//                     onPressed: () => Navigator.of(context).pop(),
//                     icon: SvgPicture.asset(
//                       "images/backcome.svg",
//                       width: 20,
//                     )),
//               ),
//               Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Row(
//                       children: [
//                         Positioned(
//                           top: 0,
//                           child: GestureDetector(
//                             onTap: () {
//                               // ontap hình avatar
//                             },
//                             //chỗ bắt đầu
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                       begin: Alignment.topCenter,
//                                       end: Alignment.bottomCenter,
//                                       colors: [
//                                         Color(0xffb92b27),
//                                         Color(0xff1565c0)
//                                       ]),
//                                   border: Border.all(
//                                     width: 3,
//                                   ),
//                                   borderRadius: BorderRadius.circular(7)),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     border: GradientBoxBorder(
//                                       gradient: LinearGradient(colors: [
//                                         Color(0xffee9ca7),
//                                         Color(0xffffdde1)
//                                       ]),
//                                       width: 6,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7)),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       border: Border.all(width: 3),
//                                       borderRadius: BorderRadius.circular(7)),
//                                   child: Image.network(
//                                     ("https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
//                                     width: 100,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 20),
//                         Text(
//                           'San nghi',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                               fontStyle: FontStyle.italic),
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Text('Mavis Vermilion',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 fontStyle: FontStyle.italic)),
//                         GestureDetector(
//                           onTap: () {
//                             // ontap hình avatar
//                           },
//                           //chỗ bắt đầu
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                     begin: Alignment.topCenter,
//                                     end: Alignment.bottomCenter,
//                                     colors: [
//                                       Color(0xffb92b27),
//                                       Color(0xff1565c0)
//                                     ]),
//                                 border: Border.all(
//                                   width: 3,
//                                 ),
//                                 borderRadius: BorderRadius.circular(7)),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   border: GradientBoxBorder(
//                                     gradient: LinearGradient(colors: [
//                                       Color(0xffee9ca7),
//                                       Color(0xffffdde1)
//                                     ]),
//                                     width: 6,
//                                   ),
//                                   borderRadius: BorderRadius.circular(7)),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     border: Border.all(width: 3),
//                                     borderRadius: BorderRadius.circular(7)),
//                                 child: Image.network(
//                                   ("https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
//                                   width: 100,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     OutlinedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: ((context) =>
//                                 const Battle()), // sửa lại đường dẫnnnnnn
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Vào trận',
//                         style: TextStyle(fontSize: 20, color: Colors.black),
//                       ),
//                       style: ButtonStyle(
//                         shape: MaterialStateProperty.all(
//                           RoundedRectangleBorder(
//                               side: BorderSide(
//                                   color: Colors.black,
//                                   width: 1,
//                                   style: BorderStyle.solid),
//                               borderRadius: BorderRadius.circular(50)),
//                         ),
//                       ),
//                     ),
//                   ]),
//             ],
//           )),
//     );
//   }
// }
