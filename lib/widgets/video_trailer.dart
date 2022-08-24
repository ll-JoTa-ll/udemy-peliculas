/*

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoTrailer extends StatefulWidget {
  VideoTrailer({Key? key}) : super(key: key);

  @override
  State<VideoTrailer> createState() => _VideoTrailerState();
}

class _VideoTrailerState extends State<VideoTrailer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    _videoPlayerController!.initialize().then((value) {
      _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController!,
          autoPlay: false,
          looping: false);
      setState(() {
        print('Video PLayer Good To Go');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _videoPlayerController!.dispose();
    _chewieController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _chewieController != null && _videoPlayerController != null
        ? Container(
            child: Chewie(controller: _chewieController!),
          )
        : Text('Loading!!!');
  }
}
*/