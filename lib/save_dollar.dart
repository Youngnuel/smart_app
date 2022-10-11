import 'package:flutter/material.dart';
import 'package:smart_app/target_finish.dart';
import 'components/dropdownflow.dart';
import 'components/button.dart';

class SaveDollar extends StatefulWidget {
  static const String id = 'save_dollar';

  @override
  State<SaveDollar> createState() => _SaveDollarState();
}

class _SaveDollarState extends State<SaveDollar> {
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
          'Save Dollar',
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
                'Start saving today',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Save and grow your wealth in dollars... 🤑',
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
                    labelText: 'Amount',
                    border: OutlineInputBorder(),
                    suffixText: '\$',
                  ),
                ),
              ),
              SizedBox(height: 40),
              DropDownFlow(caption: 'Source of Funding'),
              SizedBox(height: 296),
              Button(caption: 'Next', tapMe: () {}),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
