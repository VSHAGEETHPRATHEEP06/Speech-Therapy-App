import 'package:flutter/material.dart';
import 'exercise_detail_screen.dart';

class ExerciseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example number of exercises
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Exercise ${index + 1}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseDetailScreen(),
                  settings: RouteSettings(
                    arguments: 'Exercise ${index + 1}', // Pass exercise name
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
