import 'package:flutter/material.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/orientation/video_player_fullscreen_widget.dart';
import 'package:video_player/video_player.dart';

class PortraitPlayerWidget extends StatefulWidget {
  @override
  _PortraitPlayerWidgetState createState() => _PortraitPlayerWidgetState();
}

class _PortraitPlayerWidgetState extends State<PortraitPlayerWidget> {
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    /// for testing purposes: 'https://firebasestorage.googleapis.com/v0/b/web-johannesmilke.appspot.com/o/ezgif-7-565b5237f95f.mp4?alt=media&token=51e8e031-1e87-46e6-bd32-98c5367da59d'
    controller = VideoPlayerController.network(
        putVideoUrlHere)
      ..addListener(() => setState(() {
            // video player listener to do something here
          }))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => VideoPlayerFullscreenWidget(
        controller: controller,
        isPortrait: true,
      );
}
