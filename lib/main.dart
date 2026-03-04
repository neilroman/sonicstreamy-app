import 'package:flutter/material.dart';

void main() {
  runApp(SonicStreamyApp());
}

class SonicStreamyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sonic Streamy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainTabView(),
    );
  }
}

class MainTabView extends StatefulWidget {
  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    RadioTab(),
    YouTubeTab(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonic Streamy')), 
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'YouTube',
          ),
        ],
      ),
    );
  }
}

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Radio Tab')); // Replace with your Radio UI
  }
}

class YouTubeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('YouTube Tab')); // Replace with your YouTube UI
  }
}