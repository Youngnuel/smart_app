import 'package:flutter/material.dart';

class ProfileStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 104,
          decoration: BoxDecoration(
            color: Color(0xff0063AE),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
          ),
        ),
        // Profile image
        Positioned(
          top: 55, // (background container size) - (circle height / 2)
          child: Container(
            height: 72.0,
            width: 72.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: new AssetImage('images/smartboy.JPG'),
                    fit: BoxFit.cover)),
          ),
        ),
      ],
    );
  }
}
