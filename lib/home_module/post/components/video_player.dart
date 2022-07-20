import 'package:flutter/material.dart';
import 'package:social/constants.dart';
import 'package:social/home_module/post/components/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(widget.url)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
    controller.setVolume(commonVolume);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var isMuted = controller.value.volume == 0;

    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.play() : controller.play();
          },
          child: VideoPlayerWidget(
            controller: controller,
          ),
        ),
        IconButton(
          icon: Icon(
            isMuted ? Icons.volume_off : Icons.volume_up,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              commonVolume == 0 ? commonVolume = 1 : commonVolume = 0;
              isMuted = !isMuted;
              controller.setVolume(commonVolume);
            });
          },
        ),
      ],
    );
  }
}
