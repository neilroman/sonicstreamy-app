class VideoModel {
  final String id;
  final String title;
  final String description;
  final String channelId;
  final String channelName;
  final String thumbnailUrl;
  final String publishDate;
  final int viewCount;

  VideoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.channelId,
    required this.channelName,
    required this.thumbnailUrl,
    required this.publishDate,
    required this.viewCount,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      channelId: json['channelId'],
      channelName: json['channelName'],
      thumbnailUrl: json['thumbnailUrl'],
      publishDate: json['publishDate'],
      viewCount: json['viewCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'channelId': channelId,
      'channelName': channelName,
      'thumbnailUrl': thumbnailUrl,
      'publishDate': publishDate,
      'viewCount': viewCount,
    };
  }
}