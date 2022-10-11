import 'package:flutter/material.dart';
import 'package:smart_app/components/button.dart';
import 'package:smart_app/target_start.dart';

class TargetSavings extends StatefulWidget {
  static const String id = 'target_savings';
  @override
  State<TargetSavings> createState() => _TargetSavingsState();
}

class _TargetSavingsState extends State<TargetSavings> {
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
          'Target Savings',
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
                height: 94,
              ),
              Center(
                child: Container(
                  height: 272,
                  width: 270,
                  child: Image(
                    image: AssetImage('images/challenges.png'),
                  ),
                ),
              ),
              SizedBox(height: 113.6),
              Text(
                'Challenges!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Challenge yourself to save more and build the habit of saving. Juicy returns await you. 😍',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 72),
              Button(
                  caption: 'Get Started',
                  tapMe: () {
                    Navigator.pushNamed(context, TargetStart.id);
                  }),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
