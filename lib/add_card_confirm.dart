import 'package:flutter/material.dart';
import 'package:smart_app/add_card_password.dart';

class AddCardConfirm extends StatefulWidget {
  static const String id = 'add_card_confirm';

  @override
  State<AddCardConfirm> createState() => _AddCardConfirmState();
}

class _AddCardConfirmState extends State<AddCardConfirm> {
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
              Icon(Icons.chevron_left_rounded, color: Color(0xff003157)),
              Text(
                'Back',
                style: TextStyle(
                    color: Color(0xff003157),
                    fontSize: 12,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm data',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff003157),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please confirm your details below',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 112),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'DOB',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 207),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AddCardPassword.id);
                },
                child: Container(
                  height: 48,
                  width: 374,
                  padding: EdgeInsets.only(left: 115, right: 17),
                  decoration: BoxDecoration(
                    color: Color(0xff0063AE),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 71)
            ],
          ),
        ),
      ),
    );
  }
}
