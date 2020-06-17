import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/hightlightable.dart';
import 'dart:math' as math;

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  bool hovering = false;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 30000), 
      vsync: this
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => onHover(),
      onExit: (e) => onExit(),
      child: Container(
        width: 250,
        height: 250,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              child: Image.asset(
                "images/logo_outer_ring.png", 
                color: hovering ? Colors.blue : Colors.black,
              ),
              builder: (context, child) => rotate(child, true),
              animation: animationController,
            ),
            AnimatedBuilder(
              child: Image.asset(
                "images/logo_inner_ring.png",
                color: hovering ? Colors.blue : Colors.black,
              ),
              builder: (context, child) => rotate(child, false),
              animation: animationController,
            ),
            Image.asset(
              "images/logo_text.png",
              color: hovering ? Colors.blue : Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget rotate(Widget child, bool forward) => Transform.rotate(
    angle: animationController.value * (forward ? 1 : -1) * 2.0 * math.pi,
    child: child,
  );

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
