import 'package:material_x/material_x.dart';
//import '../modules/variable.dart';

class YoutubeVideoView extends StatefulWidget {
  @override
  _YoutubeVideoViewState createState() => _YoutubeVideoViewState();
}

class _YoutubeVideoViewState extends State<YoutubeVideoView> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Icons.play_arrow
          .mxIcons()
          .toCenter()
          .mxContainer(height: 200, color: Colors.black)
          .mxGesture(
        onHorizontalDragStart: (details) {
          print(details.globalPosition);
        },
      ),
      (context, index) {
        return ListTile(
          title: "${mxheight(context) - 300}".text(),
        );
      }.mxListVB(itemCount: 20).mxContainer(height: mxheight(context) - 300)
    ].mxcolumn().mxContainer(
        height: mxheight(context),
        color: Colors.white,
        padding: EdgeInsets.zero);
  }
}
