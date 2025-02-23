import 'package:flutter/material.dart';
import 'package:speech_therapy_app/screens/progress_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'models/user.dart';
import 'models/exercise.dart';
import 'screens/login_screen.dart';
import 'screens/exercise_detail_screen.dart';
import 'screens/exercise_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/language_selection_screen.dart';
import 'screens/upload_image_screen.dart';
import 'screens/accuracy_screen.dart';

void main() {
  // Test model functions
  testModels();

  // Launch the Flutter app
  runApp(SpeechTherapyApp());
}

void testModels() {
  User user = User(
    id: '1',
    name: 'John Doe',
    email: 'john@example.com',
    role: 'patient',
  );
  print('User Model: ${user.toJson()}');

  Exercise exercise = Exercise(
    id: '101',
    title: 'Speech Exercise 1',
    description: 'Practice tongue movement',
    referenceAudio: 'audio/path/file.mp3',
    referenceVideo: 'video/path/file.mp4',
  );
  print('Exercise Model: ${exercise.toJson()}');
}

class SpeechTherapyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech Therapy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/signup': (context) => SignUpScreen(),
        '/exercise': (context) => ExerciseScreen(),
        '/exercise_detail': (context) => ExerciseDetailScreen(),
        '/language': (context) => LanguageSelectionScreen(),
        '/upload': (context) => UploadImageScreen(),
        '/accuracy': (context) => AccuracyScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Welcome to Speech Therapy App')),
    ExerciseScreen(),
    ProgressScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Therapy App'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue, // Color for selected items
        unselectedItemColor: Colors.grey, // Color for unselected items
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
