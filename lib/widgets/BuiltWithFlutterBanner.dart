import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:lehnfeldnet/utils/web_utils.dart';

class BuiltWithFlutterBanner extends StatefulWidget {
  @override
  _BuiltWithFlutterBannerState createState() => _BuiltWithFlutterBannerState();
}

class _BuiltWithFlutterBannerState extends State<BuiltWithFlutterBanner> {

  Color fontColor = Colors.white;
  Color bannerColor = Colors.blue;

  static const WIDTH = 300.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Transform.translate(
          offset: Offset.fromDirection(0, WIDTH / 4),
          child: Transform.translate(
            offset: Offset.fromDirection(0, 0),
            child: Transform.rotate(
              angle: math.pi / 4.5,
              child: MouseRegion(
                onHover: (e) => onHover(),
                onExit: (e) => onExit(),
                child: InkWell(
                  onTap: () => onTap(),
                  child: Card(
                    elevation: 10,
                    child: Container(
                        width: WIDTH,
                        color: bannerColor,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              "Built with",
                              style: TextStyle(fontSize: 15, color: fontColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image(
                                image: AssetImage("images/flutter.png"),
                                width: 23,
                                height: 23,
                                color: fontColor,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  onTap() => WebUtils.launchUrl("https://flutter.dev/");

  onHover() {
    setState(() {
      bannerColor = Colors.white;
      fontColor = Colors.blue;
    });
  }

  onExit() {
    setState(() {
      bannerColor = Colors.blue;
      fontColor = Colors.white;
    });
  }

}
