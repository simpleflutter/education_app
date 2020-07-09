import 'package:edu_app/widgets/book_box.dart';
import 'package:edu_app/widgets/my_app_bar.dart';
import 'package:edu_app/widgets/my_tab_bar.dart';
import 'package:edu_app/widgets/unit_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffeaf4f9),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MyAppBar(
                    title: 'Crissten Collier',
                    subtitle: 'Business English',
                  ),
                  MyTabBar(),
                ],
              ),
            ),
            BookBox(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Latest Results',
                    style: TextStyle(fontSize: 20, fontFamily: 'VarelaRound'),
                  ),
                  Text(
                    'Lowest',
                    style: TextStyle(fontSize: 16, fontFamily: 'VarelaRound'),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  UnitCard(
                    unitNo: 5,
                    title: 'Running business in Sweden',
                    cards: 34,
                    percentage: 15,
                    subtitle: 'Business',
                  ),
                  UnitCard(
                    unitNo: 3,
                    title: 'Job interview',
                    cards: 48,
                    percentage: 25,
                    subtitle: 'Career',
                  ),
                  UnitCard(
                    unitNo: 8,
                    title: 'Financial Market',
                    cards: 26,
                    percentage: 75,
                    subtitle: 'Finance',
                  ),
                  UnitCard(
                    unitNo: 7,
                    title: 'Sales improvement',
                    cards: 29,
                    percentage: 57,
                    subtitle: 'Sales',
                  ),
                  UnitCard(
                    unitNo: 8,
                    title: 'Financial Market',
                    cards: 26,
                    percentage: 75,
                    subtitle: 'Finance',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
