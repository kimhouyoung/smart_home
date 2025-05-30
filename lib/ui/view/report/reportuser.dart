import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class ReportUser extends StatefulWidget {
  const ReportUser({
    super.key,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required String text6,
  })
      : this._text1 = text1,
        this._text2 = text2,
        this._text3 = text3,
        this._text4 = text4,
        this._text5 = text5,
        this._text6 = text6;
  final String _text1;
  final String _text2;
  final String _text3;
  final String _text4;
  final String _text5;
  final String _text6;

  @override
  State<ReportUser> createState() => _ReportUserWidget();
}

class _ReportUserWidget extends State<ReportUser> {
  @override
  Widget build(BuildContext context) {
    return FullSizeBox(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 24, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget._text1,
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  widget._text2,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff47C2BD),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget._text3,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      widget._text4,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFF6897),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget._text5,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      widget._text6,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
