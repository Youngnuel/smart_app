import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.tapMe, required this.caption});
  String caption;
  VoidCallback tapMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Container(
        height: 48,
        width: 374,
        padding: EdgeInsets.only(left: 40, right: 17),
        decoration: BoxDecoration(
          color: Color(0xff0063AE),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              caption,
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
    );
  }
}
