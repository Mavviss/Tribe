import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
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
                              obscureText: true,
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
                              controller: passwordConfirmController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Xác nhận mật khẩu'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //sign in button
                    SizedBox(height: 50),
                    Center(
                      // child: OutlinedButton(
                      //   onPressed: () async {
                      //     //function đăng nhập đễ đây
                      //     try {
                      //       final newUser =
                      //           _auth.createUserWithEmailAndPassword(
                      //               email: emailController.text,
                      //               password: passwordController.text);
                      //       //kiểm tra xem có tạo dc user hông
                      //       if (newUser != null ||
                      //           passwordConfirmController.text.toLowerCase() ==
                      //               passwordController.text.toLowerCase()) {
                      //         Navigator.pop(context, 'Đăng kí thành công');
                      //       } else {
                      //         final snackBar = SnackBar(
                      //             content: Text(
                      //                 'tài khoản này không hợp lệ hoặc xác nhận mật khẩu sai'));
                      //         ScaffoldMessenger.of(context)
                      //             .showSnackBar(snackBar);
                      //       }
                      //     } catch (e) {
                      //       final snackBar =
                      //           SnackBar(content: Text('Có lỗi xảy ra '));
                      //       ScaffoldMessenger.of(context)
                      //           .showSnackBar(snackBar);
                      //     }
                      //   },
                      //   child: Text(
                      //     'Đăng kí',
                      //     style: TextStyle(color: Colors.black),
                      //   ),
                      //   style: OutlinedButton.styleFrom(
                      //       side: BorderSide(color: Colors.black),
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(16)),
                      //       padding: EdgeInsets.symmetric(
                      //           horizontal: 150.0, vertical: 8),
                      //       minimumSize: Size(200, 45)),
                      // ),
                    ),
                    //forgot password
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
