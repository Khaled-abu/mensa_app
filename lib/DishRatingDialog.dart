import 'package:flutter/material.dart';

class DishRatingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Dish Rating Dialog'),
      content: Text('Inhalt für Dish Rating Dialog'),
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

