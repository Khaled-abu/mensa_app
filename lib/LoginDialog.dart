import 'package:flutter/material.dart';

class LoginDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Login Dialog'),
      content: Text('Inhalt für Login Dialog'),
      actions: <Widget>[
        TextButton(
          child: Text('Passwort'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Username'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

