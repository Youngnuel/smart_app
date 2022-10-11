import 'package:flutter/material.dart';
import 'package:smart_app/loan_attachments.dart';

import 'components/button.dart';

class LowInterestRate extends StatefulWidget {
  static const String id = 'low_interest_rate';

  @override
  State<LowInterestRate> createState() => _LowInterestRateState();
}

class _LowInterestRateState extends State<LowInterestRate> {
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
                'Low-interest rate',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'without extra charges, no hidden charges. 😍',
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
                    labelText: 'Weekly Estimated Income',
                    border: OutlineInputBorder(),
                    suffixText: '₦',
                  ),
                ),
              ),
              SizedBox(height: 48),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 28),
              Container(
                height: 48,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Street',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                height: 48,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'LGA',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                height: 48,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'State',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 118),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, LoanAttachments.id);
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
