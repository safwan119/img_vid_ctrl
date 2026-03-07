import 'package:all_practise_code/constants/string_image_path.dart';
import 'package:flutter/material.dart';

class PictureOverView extends StatelessWidget {
  PictureOverView({super.key});

  final List<Color> color = [
    Color(0xFFD8A6C5),
    Color(0xFF45A2E5),
    Color(0xFF1C4E80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          decoration: BoxDecoration(gradient: LinearGradient(colors: color)),
          width: double.infinity,
          child: Column(
            children: [
              FittedBox(
                child: CircleAvatar(
                  backgroundImage: AssetImage(ImagePath.sceneryImagePath),
                  radius: 70,
                  backgroundColor: Colors.black,
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: Image.asset(
                      ImagePath.personalImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
