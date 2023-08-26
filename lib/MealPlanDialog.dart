import 'package:flutter/material.dart';

class MealPlanDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Meal Plan Dialog'),
      content: Text('Inhalt für Meal Plan Dialog'),
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

