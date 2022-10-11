import 'package:flutter/material.dart';
import 'pagesupport/plans_tabs.dart';

class CrowdPlans extends StatefulWidget {
  static const String id = 'crowd_plans';

  @override
  State<CrowdPlans> createState() => _CrowdPlansState();
}

class _CrowdPlansState extends State<CrowdPlans> {
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
          'Crowd-Fund',
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
                title: 'Car/Vehicle',
                titlecolor: Color(0xff003157),
                amount: '₦150,000',
                amountcolor: Color(0xff003157),
                amount2: '/180,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'Fees or Debt',
                titlecolor: Color(0xff003157),
                amount: '₦32,000',
                amountcolor: Color(0xff003157),
                amount2: '/7,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'Birthday',
                titlecolor: Color(0xff003157),
                amount: '₦8,000',
                amountcolor: Color(0xff003157),
                amount2: '/15,000',
                amount2color: Color(0xff8098AB),
                tapThis: () {},
              ),
              SizedBox(height: 16),
              PlansTabs(
                backgroundcolor: Colors.white,
                title: 'No Reason',
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
