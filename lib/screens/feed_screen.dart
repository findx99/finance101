
import 'package:finance101/utils/feed_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';

import '../utils/video.dart';

class FeedScreen extends StatefulWidget{

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen>{
  final locator = GetIt.instance;
  final feedViewModel = GetIt.instance<FeedViewModel>();

  @override
  void initState(){
    feedViewModel.loadVideo(0);
    feedViewModel.loadVideo(1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedViewModel>.reactive(
        disposeViewModel: false,
        builder: (context, model, child) => videoScreen(),
        viewModelBuilder: () => feedViewModel);
  }

  Widget videoScreen() {
    return Scaffold(
      backgroundColor: GetIt.instance<FeedViewModel>().actualScreen == 0
          ? Colors.black
          : Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 2,
            onPageChanged: (value) {
              print(value);
              if (value == 1)
                SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
              else
                SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle.light);
            },
            itemBuilder: (context, index) {
              return scrollFeed();
            },
          )
        ],
      ),
    );
  }

  Widget scrollFeed() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(child: currentScreen()),
        // BottomBar(),
      ],
    );
  }

  Widget feedVideos() {
    return Stack(
      children: [
        PageView.builder(
          controller: PageController(
            initialPage: 0,
            viewportFraction: 1,
          ),
          itemCount: feedViewModel.videoSource?.listVideos.length,
          onPageChanged: (index) {
            index = index % (feedViewModel.videoSource!.listVideos.length);
            feedViewModel.changeVideo(index);
          },
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            index = index % (feedViewModel.videoSource!.listVideos.length);
            return videoCard(feedViewModel.videoSource!.listVideos[index]);
          },
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Following',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white70)),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    color: Colors.white70,
                    height: 10,
                    width: 1.0,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('For You',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ]),
          ),
        ),
      ],
    );
  }

  Widget currentScreen() {
    switch (feedViewModel.actualScreen) {
      case 0:
        return feedVideos();
      default:
        return feedVideos();
    }
  }

  Widget videoCard(Video video) {
    return Stack(
      children: [
        video.controller != null
            ? GestureDetector(
          onTap: () {
            if (video.controller!.value.isPlaying) {
              video.controller?.pause();
            } else {
              video.controller?.play();
            }
          },
          child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: video.controller?.value.size.width ?? 0,
                  height: video.controller?.value.size.height ?? 0,
                  child: VideoPlayer(video.controller!),
                ),
              )),
        )
            : Container(
          color: Colors.black,
          child: Center(
            child: Text("Loading"),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Hello"),
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    feedViewModel.controller?.dispose();
    super.dispose();
  }
}