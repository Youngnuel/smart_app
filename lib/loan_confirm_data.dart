import 'package:flutter/material.dart';
import 'package:smart_app/loan_password.dart';

class LoanConfirmData extends StatefulWidget {
  static const String id = 'loan_confirm_data';

  @override
  State<LoanConfirmData> createState() => _LoanConfirmDataState();
}

class _LoanConfirmDataState extends State<LoanConfirmData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0063AE),
        title: Text(
          'loan',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
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
                'Please confirm your details below 😍',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 60),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15),
                    labelText: 'Surname',
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
                    labelText: 'First Name',
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
                    labelText: 'Middle Name',
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
              SizedBox(height: 96),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoanPassword.id);
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
              SizedBox(height: 32)
            ],
          ),
        ),
      ),
    );
  }
}
