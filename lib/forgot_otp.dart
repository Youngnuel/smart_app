import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ForgotOtp extends StatelessWidget {
  static const String id = 'forgot_otp';

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
                'What\'s the code?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter code sent to the mail ayang*****@gmail',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 232),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Pinput(
                  obscureText: true,
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
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
              ),
              SizedBox(height: 238),
              Container(
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
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}
