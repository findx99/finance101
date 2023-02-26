
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:finance101/utils/video.dart';

class VideosAPI{
  List videoList = [];
  List<Video> listVideos = [];


  VideosAPI(){
    print("calling videoAPI");
    load();
  }

  void load() async{
    await getVideoList();
  }


  Future<List<Video>> getVideoList() async{
    // videoList = ["assets/videos/mutual_1.mp4", "assets/videos/mutual_2.mp4", "assets/videos/mutual_3.mp4"];
    final String response = await rootBundle.loadString("assets/images/videoList.json");
    final data = await json.decode(response);

    VideoListFromJson(response).forEach((element) {
      listVideos.add(element);
    });
    
    return VideoListFromJson(response);
    // print(data);
    //
    // Video.fromJson(data)
    // // print("video $video");
    //
    // videoList.forEach((video) {
    //   print("video: $video");
    //   listVideos.add(video);
    // });
    // print(listVideos);
    // return listVideos;
  }
}

// class VideosAPI {
//   List<Video> listVideos = <Video>[];
//   var data;
//
//   VideosAPI() {
//     load();
//   }
//
//   void load() async {
//     listVideos = await getVideoList();
//   }
//
//   Future<List<Video>> getVideoList() async {
//     data = await FirebaseFirestore.instance.collection("Videos").get();
//
//     var videoList = <Video>[];
//     var videos;
//
//     if (data.docs.length == 0) {
//       await addDemoData();
//       videos = (await FirebaseFirestore.instance.collection("Videos").get());
//     } else {
//       videos = data;
//     }
//
//     videos.docs.forEach((element) {
//       Video video = Video.fromJson(element.data());
//       videoList.add(video);
//     });
//
//     return videoList;
//   }
//
//   Future<Null> addDemoData() async {
//     for (var video in data) {
//       await FirebaseFirestore.instance.collection("Videos").add(video);
//     }
//   }
// }