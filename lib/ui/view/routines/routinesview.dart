import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';

class RoutinesView extends StatefulWidget {
  const RoutinesView({super.key});

  @override
  State<RoutinesView> createState() => _RoutinesWidget();
}

class _RoutinesWidget extends State<RoutinesView> {
  @override
  Widget build(BuildContext context) {
    return FullSizeBox(
      child: Padding(padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TitleWidget(
                mainText: 'Report',
                subText: 'Analyze your daily usage',
              ),
            ),
            SizedBox(height: 20),
            FullWidthBox(
              height: 170,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF3F4F5)
                )
              )
            ),
            SizedBox(height: 30),
            FullWidthBox(
                height: 150,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF3F4F5)
                    )
                )
            ),
            SizedBox(height: 30),
            FullWidthBox(
                height: 150,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
