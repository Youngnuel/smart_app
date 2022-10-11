import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/add_card.dart';
import 'package:smart_app/app_option.dart';
import 'package:smart_app/pagesupport/Account_tabs.dart';
import 'package:smart_app/profile_stack.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _auth = FirebaseAuth.instance;

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
          'Account',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xffF9FBFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileStack(),
            SizedBox(height: 46),
            Column(
              children: [
                Text(
                  'Eyam Smart',
                  style: TextStyle(
                    fontSize: 20,
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
                SizedBox(height: 60),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enable Finger Print/Face ID',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff003157),
                              ),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 0.55,
                              child: CupertinoSwitch(
                                value: true,
                                onChanged: (bool value) {
                                  setState(() {});
                                },
                                activeColor: Color(0xff0063AE),
                                trackColor: Color(0xffB3C1CD),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              'Enable Account Balance',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff003157),
                              ),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 0.55,
                              child: CupertinoSwitch(
                                value: true,
                                onChanged: (bool value) {
                                  setState(() {});
                                },
                                activeColor: Color(0xff0063AE),
                                trackColor: Color(0xffB3C1CD),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              'Enable Dark Mode',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff003157),
                              ),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 0.55,
                              child: CupertinoSwitch(
                                value: false,
                                onChanged: (bool value) {
                                  setState(() {});
                                },
                                activeColor: Color(0xff0063AE),
                                trackColor: Color(0xffB3C1CD),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            AccountTabs(
                tapback: () {},
                Title: 'Refer and Earn ₦2,000',
                icons: Icons.share_rounded),
            SizedBox(height: 16),
            AccountTabs(
                tapback: () {
                  Navigator.pushNamed(context, AddCard.id);
                },
                Title: 'My Bank and Card settings',
                icons: Icons.credit_card_rounded),
            SizedBox(height: 16),
            AccountTabs(
              tapback: () {},
              Title: 'Change Password',
              icons: Icons.lock_outline_rounded,
            ),
            SizedBox(height: 16),
            AccountTabs(
                tapback: () {
                  Navigator.pushNamed(context, AppOption.id);
                },
                Title: 'App',
                icons: Icons.apps),
            SizedBox(height: 16),
            AccountTabs(
                tapback: () {
                  _auth.signOut();
                  Navigator.pop(context);
                },
                Title: 'Logout',
                icons: Icons.logout_rounded),
            SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
