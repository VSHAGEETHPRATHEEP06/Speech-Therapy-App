import 'package:flutter/material.dart';
import 'session_screen.dart';
import 'progress_screen.dart';
import 'profile_screen.dart';
import 'exercise_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    Center(child: Text('Welcome to Speech Therapy App')), // Home Screen content
    ExerciseScreen(), // Exercises at index 1
    ProgressScreen(), // Progress at index 2
    ProfileScreen(),  // Profile at index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Therapy App'),
      ),
      body: _screens[_currentIndex], // Display the current screen based on the selected tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab index
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Exercises'), // Exercises moved to index 1
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress'),      // Progress moved to index 2
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
