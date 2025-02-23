import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final String sessionTitle;
  final String sessionTime;
  final String sessionDescription;
  final VoidCallback onJoinSession;

  SessionCard({
    required this.sessionTitle,
    required this.sessionTime,
    required this.sessionDescription,
    required this.onJoinSession,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sessionTitle,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              sessionTime,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              sessionDescription,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: onJoinSession,
              child: Text('Join Session'),
            ),
          ],
        ),
      ),
    );
  }
}
