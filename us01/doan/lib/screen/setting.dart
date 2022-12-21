import 'package:doan/screen/information.dart';
import 'package:doan/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Cài đặt ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                color: Color.fromARGB(255, 209, 209, 209),
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                    title: Text(
                      "Mavis vermilion",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.6435-9/186450621_2920475258208090_1454644319822227512_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=bsgKrLb868sAX-JTx0Q&_nc_ht=scontent.fsgn2-1.fna&oh=00_AfAtdQ4wpeHltgJ0J_ap7NjaCyT_ObrpOhbzEAYYbS28Qw&oe=6396F970"),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Inforplayer(),
                            ),
                          );
                        },
                        icon: SvgPicture.asset("images/edit.svg"))),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset("images/volumetru.svg"))),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset("images/volumecong.svg"))),
                      ],
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.lock_outline,
                        color: Color.fromARGB(255, 29, 28, 28),
                      ),
                      title: Text("Thay đổi mật khẩu "),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Color.fromARGB(255, 29, 28, 28),
                      ),
                      title: Text("Đăng xuất"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
