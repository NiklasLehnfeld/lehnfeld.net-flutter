import 'package:flutter/material.dart';
import 'package:lehnfeldnet/utils/web_utils.dart';
import 'package:lehnfeldnet/widgets/headline.dart';
import 'package:lehnfeldnet/widgets/highlightable_text.dart';
import 'package:lehnfeldnet/widgets/hightlightable.dart';

class CompaniesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double maxWidth = 600;

    return Column(
      children: [
        Headline(
          "I worked for or with", 
          style: TextStyle(fontSize: 30),
        ),
        Container(
          height: 300,
          width: deviceWidth < maxWidth ? deviceWidth : maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Highlightable(
                    child: AssetImage("images/cgi.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("https://www.cgi.com/en"),
                  ),
                  Highlightable(
                    child: AssetImage("images/ckc.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("http://ckc.de/"),
                  ),
                  Highlightable(
                    child: AssetImage("images/appmotion.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("https://www.appmotion.de/"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Highlightable(
                    child: AssetImage("images/skoda.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("https://www.skoda-auto.de/"),
                  ),
                  Highlightable(
                    child: AssetImage("images/volkswagen.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("https://www.volkswagen.de/de.html"),
                  ),
                  Highlightable(
                    child: AssetImage("images/audi.png"),
                    height: 100,
                    width: 100,
                    onClick: () => WebUtils.launchUrl("https://www.audi.de/de"),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
