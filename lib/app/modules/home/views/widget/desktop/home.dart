import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[50],
            child: Image.asset(
              "assets/20220318_104747.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 40,
          color: Colors.blue[50],
          width: MediaQuery.of(context).size.width,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              IconButton(onPressed: (){}, icon: Icon(MdiIcons.linkedin, color: Colors.blue[300],)),
              IconButton(onPressed: (){}, icon: Icon(MdiIcons.github,color: Colors.blue[300],)),
              IconButton(onPressed: (){}, icon: Icon(MdiIcons.instagram,color: Colors.blue[300],)),
            ],)
          ],),
        )
      ],
    );
  }
}
