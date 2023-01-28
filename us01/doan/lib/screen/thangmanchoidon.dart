import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/screen/single.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/question.dart';
import '../object/user_object.dart';
import '../provider/user_provider.dart';

class WinSingle extends StatefulWidget {
  const WinSingle(
      {super.key,
      required this.score,
      required this.questions,
      required this.toppic});
  final int score;

  final String toppic;
  final List<Question> questions;
  @override
  State<WinSingle> createState() => _WinSingleState();
}

class _WinSingleState extends State<WinSingle> {
  String email = '';
  var EXP, tunhien, khoahoc, congnghe;
  var SCORE;
  var docId;
  var score;
  var querySnapshots;
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  CollectionReference _user = FirebaseFirestore.instance.collection('user');
  //hàm cập nhật
  Future<void> updateUser(var docId) {
    int kinhnghiem = EXP + 100;
    switch (widget.toppic) {
      case 'tự nhiên':
        if (tunhien < widget.score) {
          return _user.doc(docId).update({
            'coreTuNhien': widget.score,
            'EXP': kinhnghiem,
          });
          break;
        } else {
          break;
        }

      case 'công nghệ':
        if (congnghe < widget.score) {
          return _user.doc(docId).update({'coreCongNghe': widget.score});
          break;
        } else {
          break;
        }

      case 'khoa học':
        if (khoahoc < widget.score)
          return _user.doc(docId).update({'coreKhoaHoc': widget.score});
        break;
    }

    return _user.doc(docId).update({});
  }

//lấy email
  void getEmail() async {
    final user = _auth.currentUser;
    if (user != null) {
      email = user.email.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    getEmail();
    return FutureBuilder<List<user>>(
      future: userProvider.get(email),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<user> thongtin = snapshot.data!;
          EXP = thongtin[0].EXP;
          tunhien = thongtin[0].coreTuNhien;
          khoahoc = thongtin[0].coreKhoaHoc;
          congnghe = thongtin[0].coreCongNghe;

          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 216, 169, 167),
                      Color.fromARGB(255, 204, 204, 216)
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 00),
                    margin: EdgeInsets.all(50),
                    child: Image.asset('images/Congrats.png'),
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Text('YAH! CHÚC MỪNG BẠN ĐÃ CHIẾN THẮNG'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Score :'),
                      Padding(
                        padding: EdgeInsets.only(left: 65),
                        child: Text(widget.score.toString()),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Level : '),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text('300 EXP'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Bạn có muón chơi tiếp không?'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            Navigator.popAndPushNamed(context, '/home');
                            try {
                              querySnapshots = await _user.get();
                              for (var snapshot in querySnapshots.docs) {
                                if (email == snapshot['email']) {
                                  docId = snapshot.id;
                                }
                              }
                              updateUser(docId);
                            } catch (e) {}
                          },
                          child: const Text('Không')),
                      ElevatedButton(
                          onPressed: () async {
                            Navigator.popAndPushNamed(context, '/chonmangchoi');
                            try {
                              querySnapshots = await _user.get();
                              for (var snapshot in querySnapshots.docs) {
                                if (email == snapshot['email']) {
                                  docId = snapshot.id;
                                }
                              }
                              updateUser(docId);
                            } catch (e) {}
                          },
                          child: const Text('Có')),
                    ],
                  )
                ],
              ),
            ),
          );
        }
        return Text('');
      }),
    );
  }
}
