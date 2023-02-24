
import 'dart:core';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:finance101/utils/video.dart';

// class VideoAPI{
//   List<FileSystemEntity> videoList = [];
//   List<Video> listVideos = [];
//   final dir = Directory("file://assets/videos/");
//
//   VideoAPI(){
//     load();
//   }
//
//   void load() async{
//     var s = await getApplicationDocumentsDirectory();
//     print(s);
//     await getVideoList();
//   }
//
//
//   Future<List<Video>?> getVideoList() async{
//     videoList = await dir.list().toList();
//     print(videoList);
//     videoList.forEach((element) {
//       listVideos.add(Video(element.toString()));
//     });
//     print(listVideos);
//     return listVideos;
//   }
// }

class VideosAPI {
  List<Video> listVideos = <Video>[];
  var data;

  VideosAPI() {
    load();
  }

  void load() async {
    listVideos = await getVideoList();
  }

  Future<List<Video>> getVideoList() async {
    data = await FirebaseFirestore.instance.collection("Videos").get();

    var videoList = <Video>[];
    var videos;

    if (data.docs.length == 0) {
      await addDemoData();
      videos = (await FirebaseFirestore.instance.collection("Videos").get());
    } else {
      videos = data;
    }

    videos.docs.forEach((element) {
      Video video = Video.fromJson(element.data());
      videoList.add(video);
    });

    return videoList;
  }

  Future<Null> addDemoData() async {
    for (var video in data) {
      await FirebaseFirestore.instance.collection("Videos").add(video);
    }
  }
}