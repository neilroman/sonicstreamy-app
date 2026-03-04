import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  @override
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  List<String> stations = []; // List of radio stations
  String searchQuery = '';

  void addStation(String station) {
    setState(() {
      stations.add(station);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Stations'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Functionality to add radio manually
              // This should prompt for user input
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Search Radio Stations',
            ),
          ),
          Expanded(
            child: ListView(
              children: stations.where((station) => station.contains(searchQuery)).map((station) {
                return ListTile(
                  title: Text(station),
                  onTap: () {
                    // Code to play the selected radio station
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}