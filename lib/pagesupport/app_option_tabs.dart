import 'package:flutter/material.dart';

class AppOptionTabs extends StatelessWidget {
  const AppOptionTabs(
      {required this.icons,
      required this.text,
      required this.title,
      required this.tapMe});
  final String title;
  final String text;

  final IconData icons;
  final VoidCallback tapMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 21, 21, 21),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
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
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff003157),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8098AB),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: Color(0xffE5EAEE), shape: BoxShape.circle),
              child: Icon(
                Icons.chevron_right_rounded,
                color: Color(0xff0063AE),
              ),
            )
          ],
        ),
      ),
    );
  }
}
