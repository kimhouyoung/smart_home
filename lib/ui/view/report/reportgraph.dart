import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class ReportGraph extends StatefulWidget {
  const ReportGraph({
    super.key,
    required String text1,
    required String text2,
    required String text3,
  }) : this._text1 = text1,
       this._text2 = text2,
       this._text3 = text3;

  final String _text1;
  final String _text2;
  final String _text3;

  @override
  State<ReportGraph> createState() => _ReportWidget();
}

class _ReportWidget extends State<ReportGraph> {
  bool isChecked = true;
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return FullSizeBox(
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget._text1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                       isChecked = true;
                       isSelect = false;
                    });
                  },
                  child: Text(
                    widget._text2,
                    style: TextStyle(fontSize: 15, color: isChecked ? Colors.black : Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isChecked = false;
                      isSelect = true;
                    });
                  },
                  child: Text(
                    widget._text3,
                    style: TextStyle(fontSize: 15, color: isSelect ? Colors.black : Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
