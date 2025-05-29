import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutinView extends StatefulWidget {
  const RoutinView({
    super.key,
    required IconData iconsView,
    required String text1,
    required String text2,
    required String text3,
    required IconData iconsView2,
  }) : this._iconsView = iconsView,
       this._iconsView2 = iconsView2,
       this._text1 = text1,
       this._text2 = text2,
       this._text3 = text3;

  final String _text1;
  final String _text2;
  final String _text3;
  final IconData _iconsView;
  final IconData _iconsView2;

  @override
  State<RoutinView> createState() => _RoutinDevice();
}

class _RoutinDevice extends State<RoutinView> {
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
              Text(
                widget._text1,
                style: TextStyle(
                  color: isChecked ? Colors.white : Colors.black,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        widget._iconsView,
                        color: isChecked ? Colors.black : Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget._text2,
                        style: TextStyle(
                          color: isChecked ? Colors.black : Colors.grey,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        widget._iconsView2,
                        color: isChecked ? Colors.black : Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget._text3,
                        style: TextStyle(
                          color: isChecked ? Colors.black : Colors.grey,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              CupertinoSwitch(
                value: isChecked,
                activeColor: Colors.cyanAccent,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
