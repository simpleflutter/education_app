import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black87,
      unselectedLabelColor: Colors.grey,
      tabs: <Widget>[
        Tab(child: getText('Activiy')),
        Tab(child: getText('Learning Paln')),
        Tab(child: getText('Progress')),
      ],
    );
  }

  Widget getText(String s) {
    return Text(
      s,
      style: TextStyle(
        fontFamily: 'VarelaRound',
        fontSize: 15,
      ),
    );
  }
}
