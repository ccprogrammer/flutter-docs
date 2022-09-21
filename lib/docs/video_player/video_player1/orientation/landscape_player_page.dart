import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/orientation/video_player_fullscreen_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class LandscapePlayerPage extends StatefulWidget {
  @override
  _LandscapePlayerPageState createState() => _LandscapePlayerPageState();
}

class _LandscapePlayerPageState extends State<LandscapePlayerPage> {
  VideoPlayerController controller;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
    // return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds"; // hours:minutes:second
  }

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset('putVideoUrlHere')
      ..addListener(() => setState(() {

            // video player listener to do something here if video end
            if (controller.value.position == controller.value.duration) {
              setAllOrientations();
              // Navigator to where
            }
          }))
      ..setLooping(false)
      ..initialize().then((_) => controller.play());

    setLandscape();
  }

  @override
  void dispose() {
    controller.dispose();
    setAllOrientations();

    super.dispose();
  }

  Future setLandscape() async {
    // hide overlays statusbar
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    await Wakelock.enable(); // keep device awake
  }

  Future setAllOrientations() async {
    await SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

    await Wakelock.disable();
  }

  @override
  Widget build(BuildContext context) => VideoPlayerFullscreenWidget(
        controller: controller,
        videoDuration: _printDuration(controller.value.position),
        isPortrait: false,
        skipVideo: () {
          setAllOrientations();
          //  Navigator to where
        },
      );
}
