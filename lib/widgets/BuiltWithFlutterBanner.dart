import 'package:flutter/material.dart';
import 'dart:math' as math;

class BuiltWithFlutterBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Transform.translate(
          offset: Offset.fromDirection(0, 35),
          child: Transform.translate(
            offset: Offset.fromDirection(180, 0),
            child: Transform.rotate(
              angle: math.pi / 5,
              child: Card(
                elevation: 10,
                child: Container(
                    width: 200,
                    color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Text(
                          "Built with",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image(
                            image: AssetImage("images/flutter.png"),
                            width: 23,
                            height: 23,
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}