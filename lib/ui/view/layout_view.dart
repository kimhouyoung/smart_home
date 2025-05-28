import 'package:flutter/material.dart';
import 'package:smart_home/ui/widget/size_widget.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});
  
  final bodyWidgets = const <Widget>[
    FullSizeBox(child: ColoredBox(color: Colors.red)),
    FullSizeBox(child: ColoredBox(color: Colors.green)),
    FullSizeBox(child: ColoredBox(color: Colors.blue))
  ];
  
  @override
  State<LayoutView> createState() => _LayoutWidget();
}

class _LayoutWidget extends State<LayoutView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10),
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
          icon: Icon(Icons.short_text_sharp, size: 40),
        ),

      ),
      body: this.widget.bodyWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: (selectedIndex) {
            setState(() {
              _selectedIndex = selectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.sunny),label: 'Routines'),
            BottomNavigationBarItem(icon: Icon(Icons.auto_graph),label: 'report'),
          ],
      ),
    );
  }
}
