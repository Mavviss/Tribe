import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:doan/components/bottom.dart';
import 'package:doan/screen/Home.dart';
import 'package:doan/screen/Rank.dart';
import 'package:doan/screen/battle.dart';
import 'package:doan/screen/chonchedo.dart';
import 'package:doan/screen/chonmanchoi.dart';
import 'package:doan/screen/history.dart';
import 'package:doan/screen/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'components/appbar_custom.dart';
import 'screen/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future  main( ) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
   int selectedpage = 1;
  int temp = 0;
  List<Widget> _pageoption = [
  Shop(),
 Picklevel(),
  Rank(),
single(),

  ];
  void select(int indexx) {
    setState(() {
      selectedpage = indexx;
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  // SystemUiOverlay.bottom,
]);
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/chonmangchoi' :(BuildContext context) => SelectType(),
        '/home':(BuildContext context) => MyApp(), 
      },
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Header(Color_: Colors.transparent,),
       bottomNavigationBar: ConvexAppBar(
      items: [
        TabItem(
            icon: SvgPicture.asset(
              "images/shop.svg",
              height: 2,
              width: 2,
            ),
            title: "Cửa hàng "),  
        TabItem(
            icon: SvgPicture.asset("images/home.svg"), title: "Trang chủ"),
        TabItem(icon: SvgPicture.asset("images/ranking.svg"), title: "Xếp hạng"),
      ],
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           Color.fromARGB(255, 173, 162, 162),
            Color.fromARGB(255, 104, 102, 103)
          ]),
          initialActiveIndex: selectedpage,
          onTap: select,
      style: TabStyle.flip,
    ),
        body: _pageoption[selectedpage],
      ),
      
      );
  }
}
class Start extends StatelessWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}