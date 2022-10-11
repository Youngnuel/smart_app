import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_app/identification.dart';
import 'create_account.dart';
import 'package:email_auth/email_auth.dart';

class OtpPage extends StatefulWidget {
  static const String id = 'otp_page';

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _auth = FirebaseAuth.instance.currentUser;

  late User loggedInUser;

  // @override
  // void initState() {
  //   super.initState();

  //   getCurrentUser();
  // }

  // void getCurrentUser() async {
  //   try {
  //     final user = await _auth.currentUser;
  //     if (user != null) {
  //       loggedInUser = user;
  //       print(loggedInUser.email);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }

  //   void verifyOTP() {var res = EmailAuth.validate(recieverMail: _emailController.text, UserOTP: _otpController.text)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What\'s the code?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter code sent to the mail',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 75),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Pinput(
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Code expires in:',
                          style: TextStyle(
                              color: Color(0xff8098AB),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 2),
                        Text('3:12',
                            style: TextStyle(
                                color: Color(0xff003157),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Identification.id);
                },
                child: Container(
                  height: 48,
                  width: 374,
                  padding: EdgeInsets.only(left: 110, top: 12),
                  decoration: BoxDecoration(
                    color: Color(0xffE5EAEE),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Resend',
                    style: TextStyle(
                        color: Color(0xff8098AB),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
