import 'package:material_x/material_x.dart';

class AdsYoutube extends StatefulWidget {
  @override
  _AdsYoutubeState createState() => _AdsYoutubeState();
}

class _AdsYoutubeState extends State<AdsYoutube> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      "https://raw.githubusercontent.com/Aliimam2001/youtube_clone_material_x/master/Search.png"
          .decorationINToCover()
          .mxContainer(
              height: 170, width: mxwidth(context), padding: EdgeInsets.zero)
          .mxap(value: 15),
      // 7.0.sizedHeight(),
      ListTile(
        title: "Get Your Video Add on Youtube_clone".text(),
        subtitle:
            "You only pay when someone choosees to watch atleast 30 seconds or click on your ad."
                .text(),
        trailing: Icons.more_vert.mxIcons().mcIconButton(onPressed: () {}),
      ),
      <Widget>[
        "Ad"
            .textMaterialColorBlack()
            .mxlrp(l: 5, r: 5)
            .mxContainer(
                color: Colors.amber,
                padding: EdgeInsets.zero,
                rounded: 5,
                shadowColor: Colors.grey,
                blurRadius: 5)
            .mxlp(value: 15),
        10.0.sizedWidth(),
        "YouTube Advertising".text()
      ].mxRow(),
      20.0.sizedHeight()
    ].mxcolumnSS().mxContainer(padding: EdgeInsets.zero, onTap: () {});
  }
}
