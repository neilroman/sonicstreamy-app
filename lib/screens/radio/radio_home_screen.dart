import 'package:flutter/material.dart';

class RadioHomeScreen extends StatefulWidget {
  @override
  _RadioHomeScreenState createState() => _RadioHomeScreenState();
}

class _RadioHomeScreenState extends State<RadioHomeScreen> {
  final List<String> radioStations = []; // List to hold radio stations
  String searchQuery = '';

  void addRadioStation(String station) {
    setState(() {
      radioStations.add(station);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Show search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Add Radio Station',
              suffixIcon: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Add station logic
                },
              ),
            ),
            onSubmitted: addRadioStation,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: radioStations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(radioStations[index]),
                  onTap: () {
                    // Play the selected radio station
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}