import 'package:all_practise_code/route/routes_name.dart';
import 'package:all_practise_code/view/picture_over_view.dart';
import 'package:all_practise_code/view/video_showing_screen.dart';
import 'package:all_practise_code/view/zoom_image.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> createRoutes(RouteSettings setting){
    switch(setting.name){
      case RoutesName.zoomScreen:
        return MaterialPageRoute(builder: (context)=>ZoomImage());
      case RoutesName.pictureOverViewScreen:
        return MaterialPageRoute(builder: (context)=>PictureOverView());
      case RoutesName.videoShowingScreen:
        return MaterialPageRoute(builder: (context)=>VideoShowingScreen());
        //default run when accidentally there is no route find
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(
              child: Text("No Page Routes Define"),
            ),
          );
        });
    }
  }
}