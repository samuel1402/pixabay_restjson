// class UserModel {
//   int id;
//   String pageURL;
//   String type;
//   String tags;
//   String previewURL;
//   int previewWidth;
//   int previewHeight;
//   String webformatURL;
//   int webformatWidth;
//   int webformatHeight;
//   String largeImageURL;
//   int imageWidth;
//   int imageHeight;
//   int imageSize;
//   int views;
//   int downloads;
//   int collections;
//   int likes;
//   int comments;
//   int userId;
//   String user;
//   String userImageURL;

//   UserModel(
//       {required this.id,
//       required this.pageURL,
//       required this.type,
//       required this.tags,
//       required this.previewURL,
//       required this.previewWidth,
//       required this.previewHeight,
//       required this.webformatURL,
//       required this.webformatWidth,
//       required this.webformatHeight,
//       required this.largeImageURL,
//       required this.imageWidth,
//       required this.imageHeight,
//       required this.imageSize,
//       required this.views,
//       required this.downloads,
//       required this.collections,
//       required this.likes,
//       required this.comments,
//       required this.userId,
//       required this.user,
//       required this.userImageURL});

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//         id: json['id'],
//         pageURL: json['pageURL'] as String,
//         type: json['type'],
//         tags: json['tags'] as String,
//         previewURL: json['previewURL'],
//         previewWidth: json['previewWidth'],
//         previewHeight: json['previewHeight'],
//         webformatURL: json['webformatURL'],
//         webformatWidth: json['webformatWidth'],
//         webformatHeight: json['webformatHeight'],
//         largeImageURL: json['largeImageURL'] as String,
//         imageWidth: json['imageWidth'],
//         imageHeight: json['imageHeight'],
//         imageSize: json['imageSize'],
//         views: json['views'] as int,
//         downloads: json['downloads'],
//         collections: json['collections'],
//         likes: json['likes'] as int,
//         comments: json['comments'],
//         userId: json['user_id'],
//         user: json['user'] as String,
//         userImageURL: json['userImageURL'] as String);
//   }
//   static List<UserModel> usermodelsFromSnapshoot(List snapshot) {
//     return snapshot.map((hits) {
//       return UserModel.fromJson(hits);
//     }).toList();
//   }

//   @override
//   String toString() {
//     return 'UserModel {user: $user, largeImageURL: $largeImageURL, likes: $likes, view: $views}';
//   }

//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['id'] = this.id;
//   //   data['pageURL'] = this.pageURL;
//   //   data['type'] = this.type;
//   //   data['tags'] = this.tags;
//   //   data['previewURL'] = this.previewURL;
//   //   data['previewWidth'] = this.previewWidth;
//   //   data['previewHeight'] = this.previewHeight;
//   //   data['webformatURL'] = this.webformatURL;
//   //   data['webformatWidth'] = this.webformatWidth;
//   //   data['webformatHeight'] = this.webformatHeight;
//   //   data['largeImageURL'] = this.largeImageURL;
//   //   data['imageWidth'] = this.imageWidth;
//   //   data['imageHeight'] = this.imageHeight;
//   //   data['imageSize'] = this.imageSize;
//   //   data['views'] = this.views;
//   //   data['downloads'] = this.downloads;
//   //   data['collections'] = this.collections;
//   //   data['likes'] = this.likes;
//   //   data['comments'] = this.comments;
//   //   data['user_id'] = this.userId;
//   //   data['user'] = this.user;
//   //   data['userImageURL'] = this.userImageURL;
//   //   return data;
//   // }
// }
