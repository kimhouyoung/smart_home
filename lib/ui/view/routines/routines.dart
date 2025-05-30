import 'package:flutter/material.dart';
import 'package:smart_home/ui/view/routines/routin_device.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';

class RoutinesView extends StatefulWidget {
  const RoutinesView({super.key});

  @override
  State<RoutinesView> createState() => _RoutinesWidget();
}

class _RoutinesWidget extends State<RoutinesView> {
  final List<Map<String, String>> routinesList = [
    {
      'text1': 'Good Moring',
      'text2': 'Every day',
      'text3': 'AM 6:00',
    },
    {
      'text1': 'Good Boy',
      'text2': 'secode day',
      'text3': 'AM 2:00',
    },
    {
      'text1': 'Good bye',
      'text2': 'month day',
      'text3': 'AM 3:00',
    },
    {
      'text1': 'Good',
      'text2': 'last day',
      'text3': 'AM 2:00',
    }
  ];

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
                children: List.generate(routinesList.length, (index) {
                  final routine = routinesList[index];
                  return RoutinView(
                    iconsView: Icons.calendar_month_outlined,
                    text1: routine['text1']!,
                    text2: routine['text2']!,
                    text3: routine['text3']!,
                    iconsView2: Icons.schedule,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
