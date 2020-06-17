import 'package:flutter/material.dart';

class HighlightableText extends StatefulWidget {

  final String text;
  final TextStyle style;
  final Color highlightColor;
  final Color defaultColor;

  HighlightableText(this.text, {this.style, this.highlightColor = Colors.blue, this.defaultColor = Colors.black});

  @override
  _HighlightableTextState createState() => _HighlightableTextState();
}

class _HighlightableTextState extends State<HighlightableText> {

  int indexToHighlight = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(widget.text.length, (i) {

            Color color = i == indexToHighlight ? widget.highlightColor : widget.defaultColor;

            return MouseRegion(
              child: Text(
                widget.text.substring(i, i+1), 
                style: widget.style.copyWith(
                  color: color
                )
              ),
              onHover: (e) => onHover(i),
              onExit: (e) => onExit(),
            );
          }),
        ),
      ],
    );
  }

  onHover(int index) => setState(() {
    indexToHighlight = index;
  });

  onExit() => setState(() {
    indexToHighlight = -1;
  });
}