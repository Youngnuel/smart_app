import 'package:flutter/material.dart';

class PlansTabs extends StatelessWidget {
  const PlansTabs(
      {required this.backgroundcolor,
      required this.amount,
      required this.amountcolor,
      required this.amount2,
      required this.amount2color,
      required this.title,
      required this.titlecolor,
      required this.tapThis});
  final String title;
  final String amount;
  final Color titlecolor;
  final Color amountcolor;
  final Color backgroundcolor;
  final String amount2;
  final Color amount2color;
  final VoidCallback tapThis;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        tapThis();
      }),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: titlecolor,
                  ),
                ),
                SizedBox(height: 6),
                Row(children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: amountcolor,
                    ),
                  ),
                  Text(
                    amount2,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: amount2color,
                    ),
                  ),
                ]),
              ],
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
