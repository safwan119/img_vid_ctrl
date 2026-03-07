import 'package:all_practise_code/constants/string_image_path.dart';
import 'package:flutter/material.dart';
import 'package:widget_zoom/widget_zoom.dart';

class ZoomImage extends StatelessWidget {
  const ZoomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zoom Image Screen"),
        centerTitle: true,
        actions: [Icon(Icons.zoom_in_map_sharp)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: WidgetZoom(
                heroAnimationTag: 'profileAvatar',
                zoomWidget: Image.asset(ImagePath.sceneryImagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
