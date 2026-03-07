import 'package:all_practise_code/constants/string_image_path.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class ChewControllerClass{
  static final videoPlayerController = VideoPlayerController.networkUrl(
    Uri.parse(ImagePath.randomVideoUrl),
  );
  static final chewController = ChewieController(
    videoPlayerController: videoPlayerController,
    allowMuting: true,
    autoPlay: false,
    allowPlaybackSpeedChanging: true,
    showSubtitles: true,
    optionsTranslation: OptionsTranslation(
      playbackSpeedButtonText: 'Playing Speed',
      subtitlesButtonText: 'Interfertile',
      cancelButtonText: 'Cancel',
    ),
    materialProgressColors: ChewieProgressColors(
      backgroundColor: Colors.white54,
      handleColor: Colors.white,
      playedColor: Colors.black,
    ),
  );
}