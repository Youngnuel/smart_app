import 'package:flutter/material.dart';
import 'package:smart_app/low_interest_rate.dart';
import 'package:smart_app/otp_page.dart';
import 'components/button.dart';

class LoanPassword extends StatefulWidget {
  static const String id = 'loan_password';
  @override
  State<LoanPassword> createState() => _LoanPasswordState();
}

class _LoanPasswordState extends State<LoanPassword> {
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
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff0063AE),
        title: Text(
          'loan',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Let’s have the password tied to your Usave account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 112),
              Container(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 384),
              Button(
                  caption: 'Next',
                  tapMe: () {
                    Navigator.pushNamed(context, LowInterestRate.id);
                  }),
              SizedBox(height: 71)
            ],
          ),
        ),
      ),
    );
  }
}
