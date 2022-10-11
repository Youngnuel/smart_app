import 'package:flutter/material.dart';
import 'package:smart_app/crowd_start.dart';
import 'components/button.dart';

class CrowdSavings extends StatefulWidget {
  static const String id = 'crowd_savings';

  @override
  State<CrowdSavings> createState() => _CrowdSavingsState();
}

class _CrowdSavingsState extends State<CrowdSavings> {
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
          'Crowd Fund',
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
                  height: 220,
                  width: 286,
                  child: Image(
                    image: AssetImage('images/collections.png'),
                  ),
                ),
              ),
              SizedBox(height: 158),
              Text(
                'Collections',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'A fun way to achieve your financial goal as a group. Create a saving circle and hit the target',
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
                    Navigator.pushNamed(context, CrowdStart.id);
                  }),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
