import 'package:flutter/material.dart';
import 'package:mensa_app/ui/DishDialog.dart';
import 'package:mensa_app/ui/DishRatingDialog.dart';
import 'package:mensa_app/ui/LoginDialog.dart';
import 'package:mensa_app/ui/MealPlanDialog.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text('Mehrere Buttons Beispiel'),
      backgroundColor: Colors.deepOrange,  // Hier wird die Farbe geändert
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // Zentriert die Kinder vertikal
          children: <Widget>[
            ElevatedButton(
              child: Text('Zeige Login Dialog'),
              style: ElevatedButton.styleFrom(primary: Colors.red), // Setzt die Hintergrundfarbe des Buttons auf rot
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return LoginDialog();
                  },
                );
              },
            ),
            SizedBox(height: 20),  // Ein wenig Abstand zwischen den Buttons
            ElevatedButton(
              child: Text('Zeige Meal Plan Dialog'),
              style: ElevatedButton.styleFrom(primary: Colors.red), // Setzt die Hintergrundfarbe des Buttons auf rot
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MealPlanDialog();
                  },
                );
              },
            ),
            SizedBox(height: 20),  // Ein wenig Abstand zwischen den Buttons
            ElevatedButton(
              child: Text('Zeige Dish Dialog'),
              style: ElevatedButton.styleFrom(primary: Colors.red), // Setzt die Hintergrundfarbe des Buttons auf rot
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DishDialog();
                  },
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Zeige Dish Rating Dialog'),
              style: ElevatedButton.styleFrom(primary: Colors.red), // Setzt die Hintergrundfarbe des Buttons auf rot
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DishRatingDialog();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
