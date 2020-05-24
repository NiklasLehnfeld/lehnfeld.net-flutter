import 'package:flutter/material.dart';
import 'package:lehnfeldnet/widgets/BuiltWithFlutterBanner.dart';
import 'package:lehnfeldnet/widgets/HomeWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Niklas Lehnfeld',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BuiltWithFlutterBanner(),
              flex: 1,
            ),
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: HomeWidget(),
              )
            )
          ],
        )));
  }
}


