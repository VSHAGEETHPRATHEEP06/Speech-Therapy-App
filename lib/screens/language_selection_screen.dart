import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Language',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Set language to Tamil
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Updated property
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('தமிழ்', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Set language to English
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Updated property
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('English', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
