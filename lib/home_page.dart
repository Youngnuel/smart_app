import 'package:flutter/material.dart';
import 'package:smart_app/crowd_plans.dart';
import 'package:smart_app/save_dollar.dart';
import 'package:smart_app/savings.dart';
import 'package:smart_app/pagesupport/quick_options.dart';
import 'package:smart_app/target_plans.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 31, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/smartboy.JPG'),
                    radius: 25,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eyam Smart',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff0063AE),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Saving money, the wise choice. 🚀',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8098AB),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 22,
                    width: 22,
                    child: ImageIcon(AssetImage('images/Notification.png'),
                        color: Color(0xff0063AE)),
                  ),
                ],
              ),
              SizedBox(width: 10),
              SizedBox(height: 48),
              Container(
                height: 112,
                width: 374,
                decoration: BoxDecoration(
                    color: Color(0xff0063AE),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: kElevationToShadow[2],
                    image: DecorationImage(
                        alignment: Alignment.bottomRight,
                        image: AssetImage('images/glass.png'),
                        fit: BoxFit.contain)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Target Saving',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB3C1CD),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '₦0.00',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffF0F6FA),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    child: Icon(
                      Icons.circle_rounded,
                      color: Color(0xff80B1D7),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 5,
                    width: 5,
                    child: Icon(
                      Icons.circle_outlined,
                      color: Color(0xff80B1D7),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Complete Setup',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff0063AE),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Get the most out of Usave account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff73787C),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        child: Image(
                          image: AssetImage('images/save.png'),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        child: Image(
                          image: AssetImage('images/Transfer.png'),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        child: Image(
                          image: AssetImage('images/Withdrawal.png'),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Referral',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff0063AE),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    height: 125,
                    width: 374,
                    child: Image(image: AssetImage('images/referral.png')),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Quick Options',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff0063AE),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      QuickOptions(
                        image: 'images/target.png',
                        title: 'Get Target Savings',
                        titlecolor: Color(0xff583505),
                        text:
                            'Want to raise money for a particular project?...',
                        textcolor: Color(0xffAB9779),
                        backgroundcolor: Color(0xffFFF9ED),
                        tapMe: () {
                          Navigator.pushNamed(context, TargetPlans.id);
                        },
                      ),
                      SizedBox(height: 16),
                      QuickOptions(
                        image: 'images/crowdfunding.png',
                        title: 'Crowd-Fund',
                        titlecolor: Color(0xff801933),
                        text:
                            'Join group savings with friends, your squad, etc',
                        textcolor: Color(0xffBF8896),
                        backgroundcolor: Color(0xffFFF3F6),
                        tapMe: () {
                          Navigator.pushNamed(context, CrowdPlans.id);
                        },
                      ),
                      SizedBox(height: 16),
                      QuickOptions(
                          image: 'images/mainsavings.png',
                          title: 'Main Savings',
                          titlecolor: Color(0xff17615A),
                          text: 'Save and raise funds for emergency...',
                          textcolor: Color(0xff83ADAA),
                          backgroundcolor: Color(0xffEEFAF9),
                          tapMe: () {}),
                      SizedBox(height: 16),
                      QuickOptions(
                          image: 'images/savedollar.png',
                          title: 'Save Dollars',
                          titlecolor: Color(0xff003157),
                          text:
                              'Save and grow your money in foreign currencies...',
                          textcolor: Color(0xff8098AB),
                          backgroundcolor: Color(0xffF0F6FA),
                          tapMe: () {
                            Navigator.pushNamed(context, SaveDollar.id);
                          }),
                    ],
                  ),
                  SizedBox(height: 21.4)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
