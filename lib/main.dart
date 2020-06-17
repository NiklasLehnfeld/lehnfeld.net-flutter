import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/built_with_flutter_banner.dart';
import 'package:lehnfeldnet/widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niklas Lehnfeld | Software Engineer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: HomeWidget(),
                ),
              ),
            ),
            Expanded(
              child: BuiltWithFlutterBanner(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
