import 'package:flutter/material.dart';
import 'package:smart_home/ui/view/report/routin_device.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';
import '../home/device.dart';

class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportWidget();
}

class _ReportWidget extends State<ReportView> {
  @override
  Widget build(BuildContext context) {
    return FullSizeBox(
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TitleWidget(
                mainText: 'Routines',
                subText: 'Set a routine and live a smart life',
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                //physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                children: [
                  RoutinView(
                    iconsView: Icons.calendar_month_outlined,
                    text1: 'Good Moring',
                    text2: 'Every day',
                    text3: 'AM 6:00',
                    iconsView2: Icons.schedule,
                  ),
                  RoutinView(
                    iconsView: Icons.calendar_month_outlined,
                    text1: 'Good Moring',
                    text2: 'Every day',
                    text3: 'AM 6:00',
                    iconsView2: Icons.schedule,
                  ),
                  RoutinView(
                    iconsView: Icons.calendar_month_outlined,
                    text1: 'Good Moring',
                    text2: 'Every day',
                    text3: 'AM 6:00',
                    iconsView2: Icons.schedule,
                  ),
                  RoutinView(
                    iconsView: Icons.calendar_month_outlined,
                    text1: 'Good Moring',
                    text2: 'Every day',
                    text3: 'AM 6:00',
                    iconsView2: Icons.schedule,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
