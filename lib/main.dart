import 'package:flutter/material.dart';
import './language_select_screen.dart';
import './level_select_screen.dart'; // Adjust the path based on your project structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coderunner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeRunner'),
        backgroundColor: Colors.blue, 
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          CourseCard(
            title: 'PLAY FLUTTER',
            progress: 1,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelSelectScreen(
                    language: "Flutter",
                  ),
                ),
              );
            },
          ),
          CourseCard(
            title: 'PLAY SWIFT',
            progress: 1,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelSelectScreen(
                    language: "Swift",
                  ),
                ),
              );
            },
          ),
          // Add more CourseCards here
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text('CodeRunner'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Handle logout logic
            },
          ),
          // Add more list tiles for other sections
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final double progress;
  final VoidCallback? onTap;

  CourseCard({required this.title, required this.progress, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Apply onTap function here
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: progress,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
