import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// ignore: camel_case_types
class Video extends StatefulWidget{
  @override
  _Video_state createState() => _Video_state();
}

// ignore: cameL_case_types
class _Video_state extends State<Video> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      }
      );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                VideoPlayer(_controller),
                // _PlayPauseOverlay(controller: _controller),
                VideoProgressIndicator(_controller, allowScrubbing: true),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}