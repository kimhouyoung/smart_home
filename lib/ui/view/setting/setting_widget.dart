import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/main.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class SettingTextView extends StatefulWidget {
  const SettingTextView({
    super.key,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required IconData iconView1,
    required IconData iconView2,
    required IconData iconView3,
    required IconData iconView4,
  }) : this._text1 = text1,
       this._text2 = text2,
       this._text3 = text3,
       this._text4 = text4,
       this._text5 = text5,
       this._iconView1 = iconView1,
       this._iconView2 = iconView2,
       this._iconView3 = iconView3,
       this._iconView4 = iconView4;

  final String _text1;
  final String _text2;
  final String _text3;
  final String _text4;
  final String _text5;
  final IconData _iconView1;
  final IconData _iconView2;
  final IconData _iconView3;
  final IconData _iconView4;

  @override
  State<SettingTextView> createState() => _SettingTextWidget();
}

class _SettingTextWidget extends State<SettingTextView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return FullWidthBox(
      height: 270,
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._text1, style: TextStyle(fontSize: 20)),
                Icon(widget._iconView1, size: 25),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            color: Color.fromARGB(255, 202, 202, 202),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._text2, style: TextStyle(fontSize: 20)),
                CupertinoSwitch(
                  value: isChecked,
                  activeColor: Color(0xff47C2BD),
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            color: Color.fromARGB(255, 202, 202, 202),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._text3, style: TextStyle(fontSize: 20)),
                Icon(widget._iconView2, size: 25),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            color: Color.fromARGB(255, 202, 202, 202),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._text4, style: TextStyle(fontSize: 20)),
                Icon(widget._iconView3, size: 25),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            color: Color.fromARGB(255, 202, 202, 202),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._text5, style: TextStyle(fontSize: 20)),
                Icon(widget._iconView4, size: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
