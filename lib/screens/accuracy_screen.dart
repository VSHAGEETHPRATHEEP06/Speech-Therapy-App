import 'package:flutter/material.dart';

class AccuracyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accuracy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Accuracy',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Accuracy: 87%',
              style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Try Next Word',
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
