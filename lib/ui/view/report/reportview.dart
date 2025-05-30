import 'package:flutter/material.dart';
import 'package:smart_home/ui/view/report/reportText.dart';
import 'package:smart_home/ui/view/report/reportgraph.dart';
import 'package:smart_home/ui/view/report/reportuser.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';

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
        child: SingleChildScrollView(
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
                    color: Color(0xffF3F4F5),
                  ),
                  child: ReportText(
                    text1: '이번달 전력 사용량은',
                    text2: '평균보다 높아요😢',
                    text3: '4인 가구의 10월 평균 전력 사용량은',
                    text4: '307.7kWh에요. 12.7%나 많이 썼어요',
                  ),
                ),
              ),
              SizedBox(height: 30),
              FullWidthBox(
                height: 140,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF3F4F5),
                  ),
                  child: ReportUser(
                    text1: 'Energy Usage',
                    text2: '10 Oct, 2023',
                    text3: 'Today',
                    text4: '26.8 kWh',
                    text5: 'This month',
                    text6: '345.56 kWh',
                  ),
                ),
              ),
              SizedBox(height: 30),
              FullWidthBox(
                height: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF3F4F5),
                  ),
                  child: ReportGraph(text1: 'Usage Comparison', text2: 'Day', text3: 'Month'),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
