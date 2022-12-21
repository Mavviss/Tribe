import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../object/user_object.dart';
import '../provider/user_provider.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  int coreSingle = 0;
  int coreBattle = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  CollectionReference thongTin = FirebaseFirestore.instance.collection('user');
  final CollectionReference<Map<String, dynamic>> lstThongTin =
      FirebaseFirestore.instance.collection('user');
  List<user> thongtinEmail = [];
  bool isEmailExist = false;

  //lấy thông tin email
  void load() async {
    final data = await userProvider.getEmail();
    if (!mounted) return;
    setState(() {
      thongtinEmail = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }

  //khai báo thực thể đối tượng
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./images/background.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    const Text(
                      'Chào bạn nhá',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    const Text(
                      'đăng kí tài khoản của bạn ',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    //username
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SingleChildScrollView(
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Tên đăng nhập'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SingleChildScrollView(
                            child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  border: InputBorder.none, hintText: 'Email'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SingleChildScrollView(
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'mật khẩu'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.grey[200],
                    //         border: Border.all(color: Colors.black),
                    //         borderRadius: BorderRadius.circular(16)),
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(left: 20.0),
                    //       child: SingleChildScrollView(
                    //         child: TextField(
                    //           controller: passwordConfirmController,
                    //           obscureText: true,
                    //           decoration: const InputDecoration(
                    //               border: InputBorder.none,
                    //               hintText: 'Xác nhận mật khẩu'),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    //sign in button
                    SizedBox(height: 50),
                    Center(
                      child: OutlinedButton(
                        onPressed: () async {
                          //function đăng kí đễ đây
                          signaUp();
                        },
                        child: Text(
                          'Đăng kí',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 150.0, vertical: 8),
                            minimumSize: Size(200, 45)),
                      ),
                    ),
                    //forgot password
                  ]),
            ),
          ),
        ),
      ),
    );
  }

// hàm đăng kí tài khoản
  Future signaUp() async {
    // kiểm tra dữ liệu trên giao diện
    if (emailController.text.trim() == '' ||
        passwordController.text.trim() == '' ||
        nameController.text.trim() == '') {
      final snackBar = SnackBar(content: Text('Chưa điền thông tin tài khoản'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (passwordController.text.trim().length < 0) {
      final snackBar =
          SnackBar(content: Text('Mật khẩu phải nhập ít nhất 6 ký tự'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      //chạy vòng lập kt email trùng
      for (var i = 0; i < thongtinEmail.length; i++) {
        if (emailController.text.trim() == thongtinEmail[i].email) {
          isEmailExist = true;
        }
      }
      if (isEmailExist == true) {
        final snackBar = SnackBar(content: Text('Email đã được sử dụng'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        isEmailExist = false;
      } else {
        try {
          addUser();
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim());
        } catch (e) {
          final snackBar =
              SnackBar(content: Text('Thông tin tài khoản không hợp lệ'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    }
  }

// thêm tài khoản vào firestore
  Future<void> addUser() {
    return thongTin
        .add({
          'email': emailController.text.trim(),
          'password': passwordController.text.trim(),
          'name': nameController.text.trim(),
          'coreSingle': 0,
          'corebattle': 0,
        })
        .then((value) => Navigator.pop(context, 'Đăng kí thành công'))
        .catchError(
            (error) => Navigator.pop(context, 'Đăng kí thất bại $error'));
  }
}
