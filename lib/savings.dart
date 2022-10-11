import 'package:flutter/material.dart';
import 'package:smart_app/crowd_savings.dart';
import 'package:smart_app/save_dollar.dart';
import 'package:smart_app/target_savings.dart';
import 'pagesupport/quick_tabs.dart';

class Savings extends StatefulWidget {
  static const String id = 'savings';
  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0063AE),
        title: Text(
          'Savings',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuickTabs(
                backgroundcolor: Colors.white,
                image: 'images/target1.png',
                text: 'Want to raise money for a particular project?...',
                textcolor: Color(0xff8098AB),
                title: 'Get Target Savings',
                titlecolor: Color(0xff003157),
                tapThis: () {
                  Navigator.pushNamed(context, TargetSavings.id);
                },
              ),
              SizedBox(height: 16),
              QuickTabs(
                  backgroundcolor: Colors.white,
                  image: 'images/crowdfunding1.png',
                  text: 'Join group savings with friends, your squad, etc',
                  textcolor: Color(0xff8098AB),
                  title: 'Crowd-Fund',
                  titlecolor: Color(0xff003157),
                  tapThis: () {
                    Navigator.pushNamed(context, CrowdSavings.id);
                  }),
              SizedBox(height: 16),
              QuickTabs(
                  backgroundcolor: Colors.white,
                  image: 'images/mainsavings1.png',
                  text: 'Save and raise funds for emergency...',
                  textcolor: Color(0xff8098AB),
                  title: 'Main Savings',
                  titlecolor: Color(0xff003157),
                  tapThis: () {}),
              SizedBox(height: 16),
              QuickTabs(
                  backgroundcolor: Colors.white,
                  image: 'images/savedollar1.png',
                  text: 'Save and grow your money in foreign currencies...',
                  textcolor: Color(0xff8098AB),
                  title: 'Save Dollars',
                  titlecolor: Color(0xff003157),
                  tapThis: () {
                    Navigator.pushNamed(context, SaveDollar.id);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
