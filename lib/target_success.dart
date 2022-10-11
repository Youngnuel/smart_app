import 'package:flutter/material.dart';
import 'package:smart_app/dashboard.dart';
import 'package:smart_app/home_page.dart';
import 'components/button.dart';
import 'components/dropdownflow.dart';

class TargetSuccess extends StatefulWidget {
  static const String id = 'target_success';
  @override
  State<TargetSuccess> createState() => _TargetSuccessState();
}

class _TargetSuccessState extends State<TargetSuccess> {
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
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'You have successfully created your target saving account, best wishes. 🎉',
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
              SizedBox(height: 24),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(21, 12, 21, 12),
                    height: 48,
                    width: 285,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffE5EAEE),
                    ),
                    child: Text(
                      'www.clearitall.com',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8098AB)),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                    padding: EdgeInsets.fromLTRB(21, 12, 21, 12),
                    height: 48,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffFFB100),
                    ),
                    child: Text(
                      'copy',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ))
              ]),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}
