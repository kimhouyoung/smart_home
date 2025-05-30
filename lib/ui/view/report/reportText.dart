import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class ReportText extends StatefulWidget {
  const ReportText({
    super.key,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
  }) : this._text1 = text1,
       this._text2 = text2,
       this._text3 = text3,
       this._text4 = text4;

  final String _text1;
  final String _text2;
  final String _text3;
  final String _text4;

  @override
  State<ReportText> createState() => ReportTextView();
}

class ReportTextView extends State<ReportText> {
  @override
  Widget build(BuildContext context) {
    return FullWidthBox(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget._text1,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            Text(
              widget._text2,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 5),
            Text(
              widget._text3,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              widget._text4,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
