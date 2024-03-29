import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/orientation/video_player_both_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class PortraitLandscapePlayerPage extends StatefulWidget {
  @override
  _PortraitLandscapePlayerPageState createState() =>
      _PortraitLandscapePlayerPageState();
}

class _PortraitLandscapePlayerPageState
    extends State<PortraitLandscapePlayerPage> {
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller =
        VideoPlayerController.asset(putVideoUrlHere)
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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: VideoPlayerBothWidget(controller: controller),
      );
}
