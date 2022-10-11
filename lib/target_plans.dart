import 'package:flutter/material.dart';
import 'pagesupport/plans_tabs.dart';

class TargetPlans extends StatefulWidget {
  static const String id = 'target_plans';

  @override
  State<TargetPlans> createState() => _TargetPlansState();
}

class _TargetPlansState extends State<TargetPlans> {
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
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'iPhone 11 Pro Max',
                titlecolor: Color(0xff003157),
                amount: '₦5,000',
                amountcolor: Color(0xff003157),
                amount2: '/180,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'iPhone 8',
                titlecolor: Color(0xff003157),
                amount: '₦2,000',
                amountcolor: Color(0xff003157),
                amount2: '/7,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'Accomodation',
                titlecolor: Color(0xff003157),
                amount: '₦5,000',
                amountcolor: Color(0xff003157),
                amount2: '/180,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'Car',
                titlecolor: Color(0xff003157),
                amount: '₦9,000',
                amountcolor: Color(0xff003157),
                amount2: '/24,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 262),
              Padding(
                padding: const EdgeInsets.only(left: 344, right: 30),
                child: Container(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xff0063AE),
                    onPressed: () {},
                    child: Icon(Icons.add),
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
