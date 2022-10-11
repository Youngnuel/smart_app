import 'package:flutter/material.dart';
import 'package:smart_app/otp_page.dart';
import 'components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_auth/email_auth.dart';

class CreateAccount extends StatefulWidget {
  static const String id = 'create_account';
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final referralController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    referralController.dispose();
    super.dispose();
  }

  //  void sendOTP() async {
  //     EmailAuth(sessionName: 'Otp Screen');
  //     var res = await EmailAuth.sendOtp(recipientMail: emailController.text, otpLength: 4);
  //     if (res) {}
  //   }

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
                'Welcome',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter your details and move on 🚀',
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
                  keyboardType: TextInputType.emailAddress,
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
                  controller: referralController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Referral Code (Optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
              SizedBox(height: 39),
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Color(0xff80B1D7),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'I agree to all',
                    style: TextStyle(
                        color: Color(0xff8098AB),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 2),
                  Text('Terms and Conditions',
                      style: TextStyle(
                          color: Color(0xff003157),
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 139),
              Button(
                caption: 'Create Account',
                tapMe: () {
                  Navigator.pushNamed(context, OtpPage.id);
                },
              ),
              // tapMe: () async {
              //   try {
              //     final newUser =
              //         await _auth.createUserWithEmailAndPassword(
              //             email: emailController.text,
              //             password: passwordController.text);
              //     if (newUser != null) {
              //       Navigator.pushNamed(context, OtpPage.id);
              //     }
              //   } catch (e) {
              //     print(e);
              //   }
              // }),
              SizedBox(height: 75)
            ],
          ),
        ),
      ),
    );
  }
}
