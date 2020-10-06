import 'package:flutter/material.dart';
import 'package:flutter_vote/constants.dart';
import 'package:flutter_vote/widgets/shared_widgets.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              kAppName,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            height: 400.0,
          ),
          LoginButton(
            label: 'View More Info',
            onPressed: () => signIn(context),
          ),
        ],
      )
    );
  }
  
  void signIn(BuildContext context){
    Navigator.pushReplacementNamed(context, '/home');
  }
  
}