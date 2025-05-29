import 'package:flutter/material.dart';
import 'package:smart_home/ui/view/home/home_view.dart';
import 'package:smart_home/ui/view/report/report.dart';
import 'package:smart_home/ui/view/routines/routinesview.dart';
import 'package:smart_home/ui/widget/size_widget.dart';
import 'package:smart_home/ui/widget/title_widget.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutWidget();
}

class _LayoutWidget extends State<LayoutView> {
  late int _selectedIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _selectedIndex = 0;
  }

  @override
  void dispose() {
    super.dispose();
    this._pageController.dispose();
  }

  final bodyWidgets = const <Widget>[
    HomeWidget(),
    ReportView(),
    RoutinesView(),
  ];

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
        leading: IconButton(
          onPressed: () {},
          padding: EdgeInsets.only(left: 24),
          icon: Icon(Icons.short_text_sharp, size: 40),
        ),
      ),

      body: PageView(
        controller: this._pageController,
        onPageChanged: _updateSelectedIndex,
        children: this.bodyWidgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Routines'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'report',),
        ],
        onTap: (selectedIndex) {
          _updateSelectedIndex(
            selectedIndex,
            () => this._pageController.animateToPage(
              selectedIndex,
              duration: Duration(milliseconds: 350),
              curve: Curves.easeInOut,
            ),
          );
        },
      ),
    );
  }
  void _updateSelectedIndex(
    final int selectedIndex, [
    final VoidCallback? callback,
  ]) {
    setState(() {
      this._selectedIndex = selectedIndex;
      callback?.call();
    });
  }
}
