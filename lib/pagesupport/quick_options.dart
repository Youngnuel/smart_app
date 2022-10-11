import 'package:flutter/material.dart';

class QuickOptions extends StatelessWidget {
  const QuickOptions(
      {required this.backgroundcolor,
      required this.image,
      required this.text,
      required this.textcolor,
      required this.title,
      required this.titlecolor,
      required this.tapMe});
  final String title;
  final String text;
  final Color titlecolor;
  final Color textcolor;
  final Color backgroundcolor;
  final String image;
  final VoidCallback tapMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 16,
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
                      color: titlecolor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
