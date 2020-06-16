import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/ContactMeWidget.dart';
import 'package:lehnfeldnet/widgets/Highlightable.dart';
import 'package:lehnfeldnet/widgets/SocialMediaWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Highlightable(
          child: AssetImage("images/logo.png"),
          width: 250,
          height: 250,
        ),    
        SizedBox(
          height: 50,
        ),
        SocialMediaWidget(),
        SizedBox(
          height: 50,
        ),
        ContactMeWidget()
      ],
    );
  }
}