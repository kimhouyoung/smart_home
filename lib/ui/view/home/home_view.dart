import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

import '../../widget/title_widget.dart';
import 'device.dart';
import 'icons.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _Home();
}

class _Home extends State<HomeWidget> {
  bool isChecked = false;

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
                mainText: 'Hi yeongho',
                subText: 'Welcome to your smart Home',
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 12,
                children: [
                  IconsView(iconView: Icons.chair, text: 'Living Room'),
                  IconsView(iconView: Icons.table_restaurant, text: 'Dining Room',),
                  IconsView(iconView: Icons.bed, text: 'Bed Room'),
                  IconsView(iconView: Icons.bathtub, text: 'Bath Room'),
                  IconsView(iconView: Icons.gamepad, text: 'Game Room'),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Devices', style: TextStyle(fontSize: 23)),
                  Icon(Icons.keyboard_arrow_right, size: 40),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: GridView.count(
                //physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                children: [
                  DeviceWidget(
                    iconsView: Icons.keyboard_voice,
                    text1: 'Smart Mic',
                    text2: '40%',
                  ),
                  DeviceWidget(
                    iconsView: Icons.speaker,
                    text1: 'Smart Speaker',
                    text2: '40%',
                  ),
                  DeviceWidget(
                    iconsView: Icons.light,
                    text1: 'Smart Lamp',
                    text2: '4 Red light2',
                  ),
                  DeviceWidget(
                    iconsView: Icons.wifi_tethering,
                    text1: 'Wifi Router',
                    text2: '100 Mbps',
                  ),DeviceWidget(
                    iconsView: Icons.keyboard_voice,
                    text1: 'Smart Mic',
                    text2: '40%',
                  ),
                  DeviceWidget(
                    iconsView: Icons.speaker,
                    text1: 'Smart Speaker',
                    text2: '40%',
                  ),
                  DeviceWidget(
                    iconsView: Icons.light,
                    text1: 'Smart Lamp',
                    text2: '4 Red light2',
                  ),
                  DeviceWidget(
                    iconsView: Icons.wifi_tethering,
                    text1: 'Wifi Router',
                    text2: '100 Mbps',
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
