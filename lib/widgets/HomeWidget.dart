import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/ContactMeWidget.dart';
import 'package:lehnfeldnet/widgets/SocialMediaWidget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 126,
          child: CircleAvatar(
            backgroundImage: AssetImage("images/profile.png"),
            radius: 125,
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