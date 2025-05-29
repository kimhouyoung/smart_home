import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceWidget extends StatefulWidget {
  const DeviceWidget({
    super.key,
    required IconData iconsView,
    required String text1,
    required String text2,
  }) : this._iconsView = iconsView,
        this._text1 = text1,
        this._text2 = text2;
  final String _text1;
  final String _text2;
  final IconData _iconsView;

  @override
  State<DeviceWidget> createState() => _DeviceView();
}

class _DeviceView extends State<DeviceWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(isChecked ? 0xff12283d : 0xffF3F4F5),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 13, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(widget._iconsView, size: 45, color: isChecked ? Colors.white : Colors.black),
              Text(widget._text1, style: TextStyle(fontSize: 15, color: isChecked ? Colors.white : Colors.black)),
              Text(widget._text2, style: TextStyle(color: Colors.grey)),
              SizedBox(height: 20),
              CupertinoSwitch(value: isChecked, activeColor: Colors.cyanAccent,onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
