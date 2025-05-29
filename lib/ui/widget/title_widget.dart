import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required String mainText,
    required String subText,
  }) : this._mainText = mainText,
       this._subText = subText;

  final String _mainText;
  final String _subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _mainText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        Text(
          _subText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
