import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/ContactMeWidget.dart';
import 'package:lehnfeldnet/widgets/SocialMediaWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  ImageProvider mainImage = AssetImage("images/profile.png");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 126,
          child: MouseRegion(
            child: CircleAvatar(
              backgroundImage: mainImage,
              radius: 125,
            ),
            onHover: (e) => setState(() {
              mainImage = AssetImage("images/logo.png");
            }),
            onExit: (e) => setState(() {
              mainImage = AssetImage("images/profile.png");
            }),
          ),
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