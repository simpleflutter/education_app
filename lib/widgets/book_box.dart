import 'package:flutter/material.dart';

class BookBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.blue.shade400,
            Colors.blue.shade200,
            Colors.red.shade300,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Keep it up!',
                style: TextStyle(
                  fontFamily: 'VarelaRound',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'You learned 80% of you goal this week!\nGood job form your',
                softWrap: true,
                style: TextStyle(
                  fontFamily: 'VarelaRound',
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Image.asset(
            'images/books2.png',
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
