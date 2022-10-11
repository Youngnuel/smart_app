import 'package:flutter/material.dart';

class NameSet extends StatelessWidget {
  const NameSet({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffE5EAEE),
          radius: 12,
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff003157)),
        ),
        Spacer(),
        Container(
          height: 24,
          width: 24,
          decoration:
              BoxDecoration(color: Color(0xffE5EAEE), shape: BoxShape.circle),
          child: Icon(
            Icons.remove,
            color: Color(0xff0063AE),
          ),
        ),
      ],
    );
  }
}
