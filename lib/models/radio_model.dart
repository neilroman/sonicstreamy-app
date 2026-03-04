class RadioModel {
  final String id;
  final String name;
  final String streamUrl;
  final String imageUrl;

  RadioModel({required this.id, required this.name, required this.streamUrl, required this.imageUrl});

  factory RadioModel.fromJson(Map<String, dynamic> json) {
    return RadioModel(
      id: json['id'] as String,
      name: json['name'] as String,
      streamUrl: json['streamUrl'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'streamUrl': streamUrl,
      'imageUrl': imageUrl,
    };
  }
}