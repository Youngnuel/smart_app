import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/next_of_kin.dart';
import 'components/button.dart';
import 'package:dotted_border/dotted_border.dart';

class LoanAttachments extends StatefulWidget {
  static const String id = 'low_attachments';

  @override
  State<LoanAttachments> createState() => _LoanAttachmentsState();
}

class _LoanAttachmentsState extends State<LoanAttachments> {
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
          'loan',
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
                'Attachments',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0063AE),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Let’s have few of this files from you',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8098AB),
                ),
              ),
              SizedBox(height: 96),
              Text('Upload School ID Card'),
              SizedBox(height: 20),
              Container(
                  height: 72,
                  width: 374,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffB3C1CD))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 28, right: 29, top: 14, bottom: 14),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.doc_text_fill,
                          size: 26,
                          color: Color(0xff8098AB),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Identity Card.jpg',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff003157),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '2.2 MB  .  JPG',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8098AB),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.trash,
                          size: 16,
                          color: Color(0xff0063AE),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 40),
              Text('Last School Fee Reciepts (optional)'),
              SizedBox(height: 20),
              DottedBorder(
                borderType: BorderType.RRect,
                color: Color(0xffB3C1CD),
                strokeWidth: 2,
                radius: Radius.circular(12),
                strokeCap: StrokeCap.round,
                dashPattern: [8, 4],
                child: Container(
                    height: 72,
                    width: 374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.photo_fill,
                          size: 16,
                          color: Color(0xff8098AB),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Upload image',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff003157),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 48),
              Text('Utility Bill'),
              SizedBox(height: 20),
              DottedBorder(
                borderType: BorderType.RRect,
                color: Color(0xffB3C1CD),
                strokeWidth: 2,
                radius: Radius.circular(12),
                strokeCap: StrokeCap.round,
                dashPattern: [8, 4],
                child: Container(
                    height: 72,
                    width: 374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.photo_fill,
                          size: 16,
                          color: Color(0xff8098AB),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Upload image',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff003157),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 95),
              Button(
                  tapMe: () {
                    Navigator.pushNamed(context, NextOfKin.id);
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
