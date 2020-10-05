import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_x/material_x.dart';
import 'package:youtube_clone_app/page/Search.dart';

Widget appBar(context) {
  return "Youtube".textMaterialColorBlack().mxAppBar(
      //automaticallyImplyLeading: false,
      elevation: 1.0,
      titleSpacing: 0.0,
      leading: FontAwesomeIcons.youtube.mxIcons(color: Colors.red),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      actions: <Widget>[
        Icons.videocam
            .mxIcons(color: Colors.black)
            .mcIconButton(onPressed: () {}),
        Icons.search
            .mxIcons(color: Colors.black)
            .mcIconButton(onPressed: () {
              SearchBar().mxRoutePage(context).fadePush();
            }),
        "Z"
            .text()
            .circleAvatar(backgroundColor: Colors.green[900], radius: 15)
            .mxrp(value: 10)
      ]).mxContainer(padding: EdgeInsets.zero, color: Colors.white);
}
