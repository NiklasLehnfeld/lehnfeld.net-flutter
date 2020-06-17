import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/ContactMeWidget.dart';
import 'package:lehnfeldnet/widgets/Highlightable.dart';
import 'package:lehnfeldnet/widgets/SocialMediaWidget.dart';
import 'package:lehnfeldnet/widgets/skills_widget.dart';

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
          height: 70,
        ),
        SkillsWidget(),
        SizedBox(
          height: 70,
        ),
        SocialMediaWidget(),
        SizedBox(
          height: 70,
        ),
        ContactMeWidget()
      ],
    );
  }
}