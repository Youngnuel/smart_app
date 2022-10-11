import 'package:flutter/material.dart';
import 'package:smart_app/create_account.dart';
import 'package:smart_app/forgot_password.dart';
import 'package:smart_app/components/button.dart';
import 'package:smart_app/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.chevron_left_rounded, color: Color(0xff003157)),
              Text(
                'Back',
                style: TextStyle(
                    color: Color(0xff003157),
                    fontSize: 12,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'saving money, the wise choice. 🚀',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 148),
              Container(
                height: 50,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 32),
              GestureDetector(
                onTap: () {},
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Color(0xff003157),
                        fontSize: 12,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 219),
              Button(
                caption: 'Login',
                tapMe: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text);
                    if (user != null) {
                      Navigator.pushNamed(context, Dashboard.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color(0xff8098AB),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CreateAccount.id);
                    },
                    child: Text('Signup here',
                        style: TextStyle(
                            color: Color(0xff003157),
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
