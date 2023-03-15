class PixabayModel {
  final String user;
  final int likes;
  final int views;
  final String largeImageURL;

  PixabayModel(
      {required this.user,
      required this.likes,
      required this.views,
      required this.largeImageURL});

  factory PixabayModel.fromJson(Map<String, dynamic> json) {
    return PixabayModel(
      user: json['user'] as String,
      likes: json['likes'] as int,
      views: json['views'] as int,
      largeImageURL: json['largeImageURL'] as String,
    );
  }

  static List<PixabayModel> pixabaysFromSnapshot(List snapshot) {
    return snapshot.map((hits) {
      return PixabayModel.fromJson(hits);
    }).toList();
  }

  @override
  String toString() {
    return 'PixabayModel {user: $user, likes: $likes, view: $views, largeImageURL: $largeImageURL}';
  }
}
