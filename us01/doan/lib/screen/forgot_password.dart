// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
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
