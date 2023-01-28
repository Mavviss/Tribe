import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgotPasswordPage extends StatefulWidget {
  const forgotPasswordPage({super.key});

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  TextEditingController nameController = TextEditingController();
  @override
//hông hỉu despose để làm gì
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

//hông hỉu future để làm gì
//à này là kiểm tra trong cở sở dữ liệu
  Future PasswordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: nameController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('link đổi mật khẩu đã được gửi! check mail'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./images/background.jpg'),
                    fit: BoxFit.fill)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    const Text(
                      'Lấy lại mật khẩu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),

                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Nhập vào tên đăng nhập hay Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
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
                                  hintText: 'Tên đăng nhập/Email'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //sign in button
                    SizedBox(height: 10),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {
                          //function đăng nhập đễ đây
                          PasswordReset();
                        },
                        child: Text(
                          'Lấy lại mật khẩu',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120.0, vertical: 8),
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
}
