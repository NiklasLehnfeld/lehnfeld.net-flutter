import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/HighlightableText.dart';

class Headline extends StatefulWidget {
  final String text;
  final TextStyle style;

  Headline(this.text, {this.style});

  @override
  _HeadlineState createState() => _HeadlineState();
}

class _HeadlineState extends State<Headline> {
  bool hoveringOnDivider = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: MouseRegion(
            onHover: (e) => onDividerHover(),
            onExit: (e) => onDividerExit(),
            child: Divider(
              color: hoveringOnDivider ? Colors.blue : Colors.grey[300],
              thickness: 1.5,
            ),
          ),
        ),
        HighlightableText(
          "  ${widget.text}  ",
          defaultColor: hoveringOnDivider ? Colors.blue : Colors.black,
          style: widget.style
              .copyWith(backgroundColor: Color.fromARGB(255, 250, 250, 250)),
        ),
      ],
    );
  }

  onDividerHover() {
    setState(() {
      hoveringOnDivider = true;
    });
  }

  onDividerExit() {
    setState(() {
      hoveringOnDivider = false;
    });
  }
}
