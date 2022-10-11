import 'package:flutter/material.dart';
import 'pagesupport/app_option_tabs.dart';

class AppOption extends StatefulWidget {
  static const String id = 'app_option';

  @override
  State<AppOption> createState() => _AppOptionState();
}

class _AppOptionState extends State<AppOption> {
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
          'App',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            AppOptionTabs(
              icons: Icons.phone,
              title: 'Support',
              text: 'Having issues or questions you need answers to?',
              tapMe: () {},
            ),
            SizedBox(height: 16),
            AppOptionTabs(
              icons: Icons.star,
              title: 'Rate',
              text: 'Feel free to rate us?',
              tapMe: () {},
            ),
            SizedBox(height: 16),
            AppOptionTabs(
              icons: Icons.info_rounded,
              title: 'About',
              text: 'To know more about us',
              tapMe: () {},
            ),
          ],
        ),
      ),
    );
  }
}
