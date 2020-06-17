import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lehnfeldnet/widgets/headline.dart';
import 'package:lehnfeldnet/widgets/progress_bar.dart';

class SkillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Headline(
            "My skills include",
            style: TextStyle(fontSize: 30),
          ),          
          SizedBox(
            height: 50,
          ),
          Container(
            width: 600,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProgressBar(
                        value: 90,
                        strokeColor: Colors.green,
                        text: "Flutter",
                        icon: FontAwesomeIcons.rocket,
                      ),
                      ProgressBar(
                        value: 50,
                        strokeColor: Colors.purple,
                        text: "Python",
                        icon: FontAwesomeIcons.python,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProgressBar(
                        value: 50,
                        strokeColor: Colors.orange,
                        text: "Swift",
                        icon: FontAwesomeIcons.apple,
                      ),
                      ProgressBar(
                        value: 60,
                        strokeColor: Colors.lime,
                        text: "SQL",
                        icon: FontAwesomeIcons.database,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProgressBar(
                        value: 90,
                        strokeColor: Colors.cyan,
                        text: "Kotlin",
                        icon: FontAwesomeIcons.android,
                      ),
                      ProgressBar(
                        value: 90,
                        strokeColor: Colors.red,
                        text: "Java",
                        icon: FontAwesomeIcons.java,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
