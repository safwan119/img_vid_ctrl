import 'package:all_practise_code/constants/chew_controller.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class VideoShowingScreen extends StatefulWidget {
  const VideoShowingScreen({super.key});

  @override
  State<VideoShowingScreen> createState() => _VideoShowingScreenState();
}

class _VideoShowingScreenState extends State<VideoShowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Showing Screen"),
        centerTitle: true,
        actions: [Icon(Icons.video_camera_back_rounded)],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Chewie(controller: ChewControllerClass.chewController),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
