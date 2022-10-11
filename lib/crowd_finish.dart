import 'package:flutter/material.dart';
import 'package:smart_app/crowd_success.dart';
import 'components/button.dart';
import 'components/dropdownflow.dart';

class CrowdFinish extends StatefulWidget {
  static const String id = 'crowd_finish';

  @override
  State<CrowdFinish> createState() => _CrowdFinishState();
}

class _CrowdFinishState extends State<CrowdFinish> {
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                'Finish setting up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Finalize your private group target settings',
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
                    labelText: 'Day',
                    border: OutlineInputBorder(),
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
                    labelText: 'Time',
                    border: OutlineInputBorder(),
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
                    labelText: 'Start Date',
                    border: OutlineInputBorder(),
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
                    labelText: 'End Date',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40),
              DropDownFlow(caption: 'Saving Mode'),
              SizedBox(height: 96),
              Button(
                caption: 'Next',
                tapMe: () {
                  Navigator.pushNamed(context, CrowdSuccess.id);
                },
              ),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}
