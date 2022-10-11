import 'package:flutter/material.dart';

class AccountTabs extends StatelessWidget {
  AccountTabs(
      {required this.Title, required this.icons, required this.tapback});

  final String Title;
  final IconData icons;
  VoidCallback tapback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapback();
      },
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ], color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: Color(0xffE5EAEE), shape: BoxShape.circle),
                child: Icon(
                  icons,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(width: 16),
              Text(
                Title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff003157),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
