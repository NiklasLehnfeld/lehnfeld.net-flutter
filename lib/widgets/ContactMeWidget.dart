import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:lehnfeldnet/widgets/Highlightable.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "or contact me",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => sendEMail(),
          child: Highlightable(
            child: AssetImage("images/mail.png"),
          ),
          hoverColor: Colors.transparent
        )
      ],
    );
  }

  void sendEMail() => launch("mailto:niklas@lehnfeld.net");
}