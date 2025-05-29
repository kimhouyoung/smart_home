import 'package:flutter/material.dart';

class IconsView extends StatefulWidget {
  const IconsView({super.key, required IconData iconView, required String text})
    : this._iconsView = iconView,
      this._text = text;

  final IconData _iconsView;
  final String _text;

  @override
  State<IconsView> createState() => _IconsWidget();
}

class _IconsWidget extends State<IconsView> {
  bool isSelect = false;
  Color background1 = Color(0xffF3F4F5);
  Color iconColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(right: 24)),
        IconButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(90, 90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: background1
          ),
          iconSize: 60,
          onPressed: () {
            setState(() {
              isSelect = !isSelect;
              if(isSelect) {
                background1 = Color(0xff12283d);
                iconColor = Colors.white;
              }else {
                background1 = Color(0xffF3F4F5);
                iconColor = Colors.black;
              }
            });
          },
          icon: Icon(widget._iconsView, color:iconColor),
        ),
        SizedBox(height: 5),
        Text(widget._text, style: TextStyle(color: Colors.black, fontSize: 13)),
      ],
    );
  }
}
