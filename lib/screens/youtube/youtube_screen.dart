import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeScreen extends StatefulWidget {
  @override
  _YouTubeScreenState createState() => _YouTubeScreenState();
}

class _YouTubeScreenState extends State<YouTubeScreen> {
  String _searchQuery = '';
  List<String> _videoList = []; // Replace with a list of video IDs
  String? _selectedVideoId;

  void _searchVideos() {
    // Implement search functionality
    // This would typically involve an API call to fetch videos matching _searchQuery
  }

  void _downloadVideo(String videoId) {
    // Implement download functionality for the selected video
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Video Search'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search for videos...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _searchVideos,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _videoList.length,
              itemBuilder: (context, index) {
                final videoId = _videoList[index];
                return ListTile(
                  title: Text(videoId), // Display video title or metadata
                  onTap: () {
                    setState(() {
                      _selectedVideoId = videoId;
                    });
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.download),
                    onPressed: () => _downloadVideo(videoId),
                  ),
                );
              },
            ),
          ),
          if (_selectedVideoId != null)
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: _selectedVideoId!,
                flags: YoutubePlayerFlags(
                  autoPlay: false,
                ),
              ),
            ),
        ],
      ),
    );
  }
}