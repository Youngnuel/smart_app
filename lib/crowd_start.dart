import 'package:flutter/material.dart';
import 'package:smart_app/crowd_group.dart';
import 'components/button.dart';
import 'components/dropdownflow.dart';

class CrowdStart extends StatefulWidget {
  static const String id = 'crowd_start';

  @override
  State<CrowdStart> createState() => _CrowdStartState();
}

class _CrowdStartState extends State<CrowdStart> {
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
          'Crowd Fund',
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
                'Create a private savings challenge for you and your friends.',
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
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40),
              DropDownFlow(caption: 'Category'),
              SizedBox(height: 284),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, CrowdGroup.id);
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
