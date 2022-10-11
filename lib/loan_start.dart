import 'package:flutter/material.dart';
import 'package:smart_app/low_interest_rate.dart';

import 'components/button.dart';

class LoanStart extends StatefulWidget {
  @override
  State<LoanStart> createState() => _LoanStartState();
}

class _LoanStartState extends State<LoanStart> {
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
                height: 32,
              ),
              Text(
                'Start setting up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Getting instant loans with no collateral 🎉',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 112),
              Container(
                height: 48,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Target Amount',
                    border: OutlineInputBorder(),
                    suffixText: '₦',
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 48,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Pay Back Date',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 295),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, LowInterestRate.id);
                  },
                  caption: 'Next'),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
