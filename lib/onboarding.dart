import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smart_app/create_account.dart';
import 'package:smart_app/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'components/button.dart';
import 'otp_page.dart';

class Onboarding extends StatefulWidget {
  static const String id = 'onboarding';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 378,
              height: 450,
              padding: EdgeInsets.only(bottom: 20),
              child: PageView(
                controller: controller,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/firstimage.png'),
                          height: 238,
                          width: 374.15,
                        ),
                        Text(
                          'Let\'s give you a safe ride to save money 🚀 ',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff003157)),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Save with ease at your convenience without extra charges i.e no charges and no hidden charges.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8098AB),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 19, left: 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/secondimage.png'),
                          height: 238,
                          width: 374.15,
                        ),
                        Text(
                          'Set target savings and build the habit of saving 😍',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff003157),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Achieve your saving goals with our target saving feature for free, no hidden charges applied',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8098AB),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 19, left: 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/thirdimage.png'),
                          height: 238,
                          width: 374.15,
                        ),
                        Text(
                          'Easy savings with the simplest way 🎉',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff003157),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Get instant loans with no collateral required, and a low-interest rate, without extra charges',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
            ),
            SizedBox(height: 72.25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Button(
                  caption: 'Create Account',
                  tapMe: () {
                    Navigator.pushNamed(context, CreateAccount.id);
                  }),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Color(0xff8098AB),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  child: Text('Login here',
                      style: TextStyle(
                          color: Color(0xff003157),
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
