import 'package:flutter/material.dart';
import 'package:smart_home/ui/view/setting/settings.dart';
import 'package:smart_home/ui/view/setting/setting_widget.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => SettingWidget();
}

class SettingWidget extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 24),
        actions: [
          SizedBox(
            width: 45,
            height: 45,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/ham.jpeg'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TitleWidget(
                  mainText: 'Setting',
                  subText: 'Try changing various options',
                ),
              ),
              SizedBox(height: 35),
              FullWidthBox(
                height: 230,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF3F4F5),
                  ),
                  child: Column(
                    children: [
                      SettingListView(
                        text1: '언어',
                        text2: '다크모드',
                        text3: '현재 버전 3.5.0',
                        text4: '개인정보 처리방침',
                        iconView1: Icons.arrow_forward_ios,
                        iconView2: Icons.arrow_forward_ios,
                        iconView3: Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              FullWidthBox(
                height: 280,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF3F4F5),
                  ),
                  child: Column(
                    children: [
                      SettingTextView(
                        text1: '일반',
                        text2: '알림',
                        text3: '앱설정',
                        text4: '이 앱 공유',
                        text5: '도움말',
                        iconView1: Icons.arrow_forward_ios,
                        iconView2: Icons.arrow_forward_ios,
                        iconView3: Icons.arrow_forward_ios,
                        iconView4: Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
