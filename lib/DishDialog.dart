import 'package:flutter/material.dart';

class DishDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Dish Dialog'),
      content: Text('Gebe deine Passwort und Username ein'),
      actions: <Widget>[
        TextButton(
          child: Text('Abbrechen'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Bestätigen'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

