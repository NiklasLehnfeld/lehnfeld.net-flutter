import 'package:flutter/material.dart';
import 'package:lehnfeldnet/utils/web_utils.dart';
import 'package:lehnfeldnet/widgets/Highlightable.dart';
import 'package:speech_bubble/speech_bubble.dart';

class GitHubWidget extends StatefulWidget {
  @override
  _GitHubWidgetState createState() => _GitHubWidgetState();
}

class _GitHubWidgetState extends State<GitHubWidget> {
  bool get showSpeechBubble => hoveringOnBubble || hoveringOnIcon;

  bool hoveringOnIcon = false;
  bool hoveringOnBubble = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onHover: (e) => onIconHover(),
          onExit: (e) => onIconExit(),
          child: InkWell(
            onTap: () =>
                WebUtils.launchUrl("https://github.com/NiklasLehnfeld"),
            child: Highlightable(
              child: AssetImage("images/github.png"),
            ),
            hoverColor: Colors.transparent,
          ),
        ),
        MouseRegion(
          onHover: (e) => onBubbleHover(),
          onExit: (e) => onBubbleExit(),
          child: SpeechBubble(
            color: showSpeechBubble ? (hoveringOnBubble ? Colors.blue : Colors.black) : Colors.transparent,
            nipLocation: NipLocation.TOP,
            child: Text(
              "This site on GitHub",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: showSpeechBubble? Colors.white : Colors.transparent),
            ),
          ),
        )
      ],
    );
  }

  onIconHover() {
    setState(() {
      hoveringOnIcon = true;
    });
  }

  onIconExit() {
    setState(() {
      hoveringOnIcon = false;
    });
  }

  onBubbleHover() {
    setState(() {
      hoveringOnBubble = true;
    });
  }

  onBubbleExit() {
    setState(() {
      hoveringOnBubble = false;
    });
  }
}
