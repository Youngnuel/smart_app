import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'components/dropdownflow.dart';
import 'target_personal.dart';
import 'components/button.dart';

class TargetStart extends StatefulWidget {
  static const String id = 'target_start';

  @override
  State<TargetStart> createState() => _TargetStartState();
}

class _TargetStartState extends State<TargetStart> {
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
          'Target Savings',
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
                'Saving with discipline towards a specific goal.',
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
              SizedBox(height: 296),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, TargetPersonal.id);
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
