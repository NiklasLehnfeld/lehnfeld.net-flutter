import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/Highlightable.dart';
import 'dart:js' as js;

class SocialMediaWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var deviceWidth = MediaQuery.of(context).size.width;
    const maxWidth = 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Follow me on",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: deviceWidth < maxWidth ? deviceWidth : maxWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => launchURL("https://instagram.com/ni.lehnfeld"),
                child: Highlightable(
                  child: AssetImage("images/instagram.png"),
                ),
                hoverColor: Colors.transparent
              ),
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://github.com/NiklasLehnfeld"),
                child: Highlightable(
                  child: AssetImage("images/github.png"),
                ),
                hoverColor: Colors.transparent
              ),
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://www.linkedin.com/in/lehnfeld/"),
                child: Highlightable(
                  child: AssetImage("images/linkedin.png"),
                ),
                hoverColor: Colors.transparent
              ),
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://twitter.com/NLehnfeld"),
                child: Highlightable(
                  child: AssetImage("images/twitter.png"),
                ),
                hoverColor: Colors.transparent
              ),
            ],
          ),
        ),
      ],
    );
  }

  void launchURL(String url) => js.context.callMethod("open", [url]);
}

