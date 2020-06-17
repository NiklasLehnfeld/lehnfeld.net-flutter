import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:html' as html;


class Highlightable extends StatefulWidget {

  static final appContainer = html.window.document.getElementById('app-container');
  
  final ImageProvider child;
  final double width;
  final double height;

  final Color highlightColor;
  final Color defaultColor;

  Highlightable({this.child, this.highlightColor = Colors.blue, this.defaultColor = Colors.black, this.width = 100, this.height = 100});

  @override
  _HighlightableState createState() => _HighlightableState();
}

class _HighlightableState extends State<Highlightable> {

  Color currentColor;

  @override
  void initState() {
    currentColor = widget.defaultColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Image(
        image: widget.child,
        color: currentColor,
        width: widget.width,
        height: widget.height,
      ),
      onHover: (event) => onHover(),
      onExit: (event) => onExit()
    );
  }

  onHover() {
    setState(() {
      currentColor = widget.highlightColor;
    });
  }

  onExit() {
    setState(() {
      currentColor = widget.defaultColor;
    });
  }
}