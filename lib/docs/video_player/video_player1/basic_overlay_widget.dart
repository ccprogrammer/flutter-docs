import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;
  final Function skipVideo;
  final String videoDuration;

  const BasicOverlayWidget({
    Key key,
    @required this.controller,
    this.skipVideo,
    this.videoDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            controller.value.isPlaying ? controller.pause() : controller.play(),
        child: Stack(
          children: <Widget>[
            buildPlay(),
            buildSkipVideo(),
            buildDuration(),
            buildIndicator(),
          ],
        ),
      );

  Widget buildIndicator() => Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: VideoProgressIndicator(
          controller,
          allowScrubbing: true,
        ),
      );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
          alignment: Alignment.center,
          color: Colors.black26,
          child: Icon(Icons.play_arrow, color: Colors.white, size: 80),
        );

  Widget buildSkipVideo() => Positioned(
        right: 16,
        top: 16,
        child: TextButton(
          onPressed: () {
            skipVideo();
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.white12,
          ),
          child: Text(
            'Skip Video',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      );

  Widget buildDuration() => Positioned(
        left: 16,
        bottom: 16,
        child: Text(
          videoDuration,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
}
