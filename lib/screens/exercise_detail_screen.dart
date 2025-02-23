import 'package:flutter/material.dart';

class ExerciseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String exerciseTitle = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(exerciseTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. Follow the on-screen instructions.\n'
                  '2. Ensure your camera is properly positioned.\n'
                  '3. Practice speaking the given phrases.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to recording or activity screen
              },
              child: Text('Start Exercise'),
            ),
          ],
        ),
      ),
    );
  }
}
