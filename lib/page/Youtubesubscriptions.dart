import 'package:material_x/material_x.dart';
import 'package:youtube_clone_app/modules/widgets.dart';
import 'package:youtube_clone_app/modules/youtube_videos_list.dart';

//Youtubesubscriptions

class Youtubesubscriptions extends StatefulWidget {
  @override
  _YoutubesubscriptionsState createState() => _YoutubesubscriptionsState();
}

class _YoutubesubscriptionsState extends State<Youtubesubscriptions> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      appBar(context),
      mxRowCC.list([
        (context, index) {
          return <Widget>[
            "https://avatars0.githubusercontent.com/u/64968311?s=400&u=58608acdd99c0ebe6ce0d97141cca3d297bb28d8&v=4"
                .mxCircleNetWorkImage()
                .toCenter(),
            7.0.sizedHeight(),
            "Neel Patel".textMaterial(fontsize: 10)
          ].mxcolumnCC().mxContainer(width: 80, padding: EdgeInsets.all(0.0));
        }.mxListVB(itemCount: 10, scrollDirection: Axis.horizontal).mxContainer(
            height: 100,
            width: mxwidth(context) - 70,
            padding: EdgeInsets.all(0.0)),
        "All"
            .textMaterialColorblue()
            .circleAvatar(backgroundColor: Colors.white)
            .toCenter()
            .mxGesture(onTap: () {})
            .mxContainer()
      ]),
      YoutubeVideoList(),
      Divider(
        height: 8,
      ),
    ].mxListView(padding: EdgeInsets.zero).mxScaffold(
          backgroundColor: Colors.white,
        );
  }
}
