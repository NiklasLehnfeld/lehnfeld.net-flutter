import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

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
          child: Image(
            image: AssetImage("images/mail.png"),
            height: 100,
            width: 100,
          ),
        )
      ],
    );
  }

  void sendEMail() {
    final Email email = Email(
      recipients: ['niklas@lehnfeld.net'],
      isHTML: false,
    );

    FlutterEmailSender.send(email);
  }
}