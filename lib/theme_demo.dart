import 'package:flutter/material.dart';

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text('Flutter'),
          Text(
            'Fourse',
            style: TextStyle(color: Colors.blue),
          ),
          Text(
            'I like codding',
            style: TextStyle(
              fontSize: 40,
            ),
          ),

          RaisedButton(
            child: Text('Click Me!'),
            onPressed: (){},
          ),

          RaisedButton(
            child: Text('register'),
            onPressed: (){},
          ),

          RaisedButton(
            color: Colors.orange,
            child: Text('Login'),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
