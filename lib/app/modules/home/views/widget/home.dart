import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 200,
          width: 300,
          // child: CircleAvatar(
          //   radius: 500,
          //   backgroundImage: AssetImage("assets/profile.png"),
          // ),
        ),
        Container(
          height: 80,
          width: 80,
          color: Colors.green,
        ),
      ],
    );
  }
}