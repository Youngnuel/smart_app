import 'package:flutter/material.dart';
import 'package:smart_app/dashboard.dart';
import 'components/button.dart';

class LoanSuccess extends StatefulWidget {
  static const String id = 'loan_success';
  @override
  State<LoanSuccess> createState() => _LoanSuccessState();
}

class _LoanSuccessState extends State<LoanSuccess> {
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
              Icon(Icons.chevron_left_rounded, color: Colors.white),
              Text(
                'Back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 82,
              ),
              Center(
                child: Container(
                  height: 240,
                  width: 250,
                  child: Image(
                    image: AssetImage('images/congratulations.png'),
                  ),
                ),
              ),
              SizedBox(height: 85),
              Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Your cash has been sent to your Bank Account Number that is tied to your Usave account 🎉',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 72),
              Button(
                  caption: 'Take me Home',
                  tapMe: () {
                    Navigator.pushNamed(context, Dashboard.id);
                  }),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
