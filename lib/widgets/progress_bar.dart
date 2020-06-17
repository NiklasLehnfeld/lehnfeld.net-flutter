import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProgressBar extends StatefulWidget {

  final double height;
  final double width;
  final double strokeWidth;
  final Color strokeColor;

  final int value;

  final String text;
  final IconData icon;

  ProgressBar({
    this.height = 100, 
    this.width = 100, 
    this.strokeWidth = 5, 
    this.strokeColor = Colors.green,
    this.value,
    this.text,
    this.icon,
  });

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {

  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        children: [
          MouseRegion(
            onHover: (e) => onHover(),
            onExit: (e) => onExit(),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: widget.width,
                  height: widget.height,
                  child: CircularProgressIndicator(
                    value: this.widget.value / 100,
                    strokeWidth: widget.strokeWidth,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(hovering ? Colors.blue : widget.strokeColor),
                  ),
                ),
                hovering ?
                FaIcon(widget.icon, color: Colors.blue,) :
                Text(
                  widget.text, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: hovering ? Colors.blue : Colors.black
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  onHover() {
    setState(() {
      hovering = true;
    });
  }

  onExit() {
    setState(() {
      hovering = false;
    });
  }
}