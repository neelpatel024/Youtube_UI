import 'package:material_x/material_x.dart';

class YoutubeHorizontalList extends StatefulWidget {
  @override
  _YoutubeHorizontalListState createState() => _YoutubeHorizontalListState();
}

class _YoutubeHorizontalListState extends State<YoutubeHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return (context, index) {
      return <Widget>[
        "https://www.itl.cat/pngfile/big/305-3057656_rohit-sharma-pull-shot.jpg"
            .mxImageNetwork(),
        mxRow.list([
          mxColumn
              .list([
                "Rohit Sharma|| Rohit Sharma 264  || Neel Patel".text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12)),
                3.0.sizedHeight(),
                "Neel Patel".textMaterial(color: Colors.grey, fontsize: 12),
              ])
              .mxContainer()
              .mxFlexable(),
          Icons.more_vert.mxIcons(color: Colors.grey).mxtp(value: 10)
        ]).mxContainer(padding: EdgeInsets.zero),
      ]
          .mxcolumn()
          .mxContainer(
              width: 150, padding: EdgeInsets.zero, color: Colors.white)
          .mxlp(value: 10);
    }.mxListVB(itemCount: 10, scrollDirection: Axis.horizontal);
  }
}
