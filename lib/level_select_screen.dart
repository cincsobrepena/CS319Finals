import 'package:flutter/material.dart';
import 'code_snippet_widget.dart';
import 'snippets.dart';

class LevelSelectScreen extends StatefulWidget {
  final String language;

  LevelSelectScreen({required this.language});

  @override
  _LevelSelectScreenState createState() => _LevelSelectScreenState();
}

class _LevelSelectScreenState extends State<LevelSelectScreen> {
  Set<int> completedLevels = {};

  void markLevelAsCompleted(int levelIndex) {
    setState(() {
      completedLevels.add(levelIndex);
    });
  }

  List<CodeSnippet> getSnippetsForDifficulty(
      String language, String difficulty) {
    switch (language) {
      case 'Flutter':
        switch (difficulty) {
          case 'easy':
            return flutterEasySnippets;
          case 'medium':
            return flutterMediumSnippets;
          case 'hard':
            return flutterHardSnippets;
        }
        break;
      case 'Swift':
        switch (difficulty) {
          case 'easy':
            return swiftEasySnippets;
          case 'medium':
            return swiftMediumSnippets;
          case 'hard':
            return swiftHardSnippets;
        }
        break;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.language} Level Select'),
                     backgroundColor: Colors.blue, 
                    ),
      body: ListView(
        children: <Widget>[
          LevelSelectCard(
            title: 'EASY',
            progress: 1,
            onTap: () {
              List<CodeSnippet> snippets =
                  getSnippetsForDifficulty(widget.language, 'easy');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CodeSnippetWidget(
                    snippets: snippets,
                    title: 'Easy Level',
                    onLevelCompleted: () => markLevelAsCompleted(0),
                  ),
                ),
              );
            },
          ),
          LevelSelectCard(
            title: 'MEDIUM',
            progress: 1,
            onTap: () {
              List<CodeSnippet> snippets =
                  getSnippetsForDifficulty(widget.language, 'medium');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CodeSnippetWidget(
                    snippets: snippets,
                    title: 'Medium Level',
                    onLevelCompleted: () => markLevelAsCompleted(1),
                  ),
                ),
              );
            },
          ),
          LevelSelectCard(
            title: 'HARD',
            progress: 1,
            onTap: () {
              List<CodeSnippet> snippets =
                  getSnippetsForDifficulty(widget.language, 'hard');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CodeSnippetWidget(
                    snippets: snippets,
                    title: 'Hard Level',
                    onLevelCompleted: () => markLevelAsCompleted(2),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


class LevelSelectCard extends StatelessWidget {
  final String title;
  final double progress;
  final VoidCallback? onTap;

  LevelSelectCard({required this.title, required this.progress, required this.onTap});

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
