import 'dart:convert';

import 'package:video_player/video_player.dart';

List<Video> VideoListFromJson(String str) => List<Video>.from(json.decode(str).map((x) => Video.fromJson(x)));

class Video {
  int id;
  String path;
  String title;
  String type;

  VideoPlayerController? controller;

  Video(
      {required this.path,
      required this.id,
      required this.title,
      required this.type}) {
    print("path: $path");
  }

  Video.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    path = json['path'],
    type = json['type'],
    title = json['title'];

  loadController() async {
    print("path: $path");
    controller = VideoPlayerController.asset(path);
    await controller?.initialize();
    controller?.setLooping(true);
  }
}

// class Video {
//   String id;
//   String user;
//   String userPic;
//   String videoTitle;
//   String songName;
//   String likes;
//   String comments;
//   String url;
//
//   VideoPlayerController? controller;
//
//   Video(
//       {required this.id,
//         required this.user,
//         required this.userPic,
//         required this.videoTitle,
//         required this.songName,
//         required this.likes,
//         required this.comments,
//         required this.url});
//
//   Video.fromJson(Map<dynamic, dynamic> json)
//       : id = json['id'],
//         user = json['user'],
//         userPic = json['user_pic'],
//         videoTitle = json['video_title'],
//         songName = json['song_name'],
//         likes = json['likes'],
//         comments = json['comments'],
//         url = json['url'];
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['user'] = this.user;
//     data['user_pic'] = this.userPic;
//     data['video_title'] = this.videoTitle;
//     data['song_name'] = this.songName;
//     data['likes'] = this.likes;
//     data['comments'] = this.comments;
//     data['url'] = this.url;
//     return data;
//   }
//
//   Future<Null> loadController() async {
//     controller = VideoPlayerController.network(url);
//     await controller?.initialize();
//     controller?.setLooping(true);
//   }
// }
