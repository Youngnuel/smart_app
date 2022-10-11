import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_app/crowd_public.dart';
import 'components/button.dart';
import 'package:smart_app/components/dropdownflow.dart';
import 'nameset.dart';

class CrowdGroup extends StatefulWidget {
  static const String id = 'crowd_group';

  @override
  State<CrowdGroup> createState() => _CrowdGroupState();
}

class _CrowdGroupState extends State<CrowdGroup> {
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
          'Crowd Fund',
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
                'Add group members',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Use this option to add group members',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 112),
              DropDownFlow(caption: 'Participants'),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 16, right: 12),
                height: 48,
                width: 374,
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Color(0xffE5EAEE), shape: BoxShape.circle),
                      child: Icon(
                        Icons.image_outlined,
                        color: Color(0xff0063AE),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Color(0xffE5EAEE), shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Color(0xff0063AE),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffB3C1CD)),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff003157),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Added Participants',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff8098AB),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 16),
                    NameSet(name: 'Erim Anna'),
                    SizedBox(height: 24),
                    NameSet(name: 'Uket Cyril'),
                    SizedBox(height: 24),
                    NameSet(name: 'Innocent Mma'),
                    SizedBox(height: 24),
                    NameSet(name: 'Blessing Odey'),
                  ],
                ),
              ),
              SizedBox(height: 48),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, CrowdPublic.id);
                  },
                  caption: 'Next'),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}
