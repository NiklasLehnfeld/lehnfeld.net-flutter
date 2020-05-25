import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../HoverExtension.dart';

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
                onTap: () => launchURL("https://instagram.com/nik.devs"),
                child: Image(
                  image: AssetImage("images/instagram.png"),
                  width: 100,
                  height: 100,
                ),
              ).showCursorOnHover,
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://github.com/NiklasLehnfeld"),
                child: Image(
                  image: AssetImage("images/github.png"),
                  width: 100,
                  height: 100,
                ),
              ).showCursorOnHover,
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://www.linkedin.com/in/lehnfeld/"),
                child: Image(
                  image: AssetImage("images/linkedin.png"),
                  width: 100,
                  height: 100,
                ),
              ).showCursorOnHover,
              Spacer(),
              InkWell(
                onTap: () => launchURL("https://twitter.com/NLehnfeld"),
                child: Image(
                  image: AssetImage("images/twitter.png"),
                  width: 100,
                  height: 100,
                ),
              ).showCursorOnHover,
            ],
          ),
        ),
      ],
    );
  }

  void launchURL(String url) => js.context.callMethod("open", [url]);
}

