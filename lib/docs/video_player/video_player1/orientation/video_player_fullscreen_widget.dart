import 'package:flutter/material.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/basic_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerFullscreenWidget extends StatelessWidget {
  final VideoPlayerController controller;
  final bool isPortrait;

  const VideoPlayerFullscreenWidget({
    Key key,
    @required this.controller,
    @required this.isPortrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Center(child: CircularProgressIndicator());

  Widget buildVideo() => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          buildVideoPlayer(),
          BasicOverlayWidget(controller: controller),
        ],
      );

  Widget buildVideoPlayer() => buildFullScreen(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
      );

  Widget buildFullScreen({
    @required Widget child,
  }) {
    final size = controller.value.size;
    final width = size?.width ?? 0;
    final height = size?.height ?? 0;

    if (!isPortrait) {
      return SizedBox(width: width, height: height, child: child);
    }
    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(width: width, height: height, child: child),
    );
  }
}
