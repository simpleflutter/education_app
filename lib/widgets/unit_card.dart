import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class UnitCard extends StatelessWidget {
  final int unitNo;
  final String title;
  final int cards;
  final String subtitle;
  final double percentage;

  UnitCard(
      {this.unitNo, this.title, this.subtitle, this.cards, this.percentage});

  @override
  Widget build(BuildContext context) {
    Color c = percentage >= 50 ? Colors.blue.shade300 : Colors.red.shade300;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Unit $unitNo',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' - $title',
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Icon(
                    Icons.insert_drive_file,
                    color: Colors.blue.shade200,
                  ),
                  label: Text(
                    '$cards cards',
                    style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Icon(
                    Icons.bookmark_border,
                    color: Colors.blue.shade200,
                  ),
                  label: Text(
                    '$subtitle',
                    style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: LinearPercentIndicator(
                    progressColor: c,
                    backgroundColor: Colors.grey.shade300,
                    percent: percentage * .01,
                    leading: Text(
                      '${percentage.toInt()}%',
                      style: TextStyle(
                        color: c,
                        fontFamily: 'VarelaRound',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
