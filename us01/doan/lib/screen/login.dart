
import 'package:flutter/material.dart';
import './forgot_password.dart';
import './register.dart';
import './Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });
  // final VoidCallback showRegisterPage;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./images/background.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  const Text(
                    'Hello Again',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Welcome back, you\'ve been missed ',
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
                        child: TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'T??n ????ng nh???p'),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
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
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: 'M???t kh???u'),
                        ),
                      ),
                    ),
                  ),
                  //sign in button
                  SizedBox(height: 10),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const Start()),
                            ),
                          );
                        });
                      },
                      child: Text(
                        'Sign in',
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
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const forgotPasswordPage()),
                        ),
                      );
                    },
                    child: const Text(
                      'Qu??n m???t kh???u',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                    ),
                  ),
                  //register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ch??a c?? t??i kho???n ?'),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const registerPage()),
                              ),
                            );
                          });
                        },
                        child: const Text(
                          '????ng k?? ngay',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(),
    );
  }
}
