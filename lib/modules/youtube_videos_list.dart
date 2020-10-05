import 'package:material_x/material_x.dart';

class YoutubeVideoList extends StatefulWidget {
  @override
  _YoutubeVideoListState createState() => _YoutubeVideoListState();
}

class _YoutubeVideoListState extends State<YoutubeVideoList> {
  @override
  Widget build(BuildContext context) {
    return (context, index) {
      return mxColumn.list([
        "https://s01.sgp1.cdn.digitaloceanspaces.com/article/122946-mtiajfuqxr-1561950338.jpg"
            .decorationINToCover()
            .mxContainer(
                height: 220,
                width: mxwidth(context),
                padding: EdgeInsets.zero,
                child: mxRowEE
                    .list([
                      "24:10".textMaterialColorWhite(fontsize: 12).mxContainer(
                          color: Colors.black87.withOpacity(0.7),
                          padding: EdgeInsets.all(5),
                          rounded: 5)
                    ])
                    .toAlign(alignment: Alignment.bottomRight)
                    .mxrbp(r: 6, b: 6))
            .mxlrtp(l: 10, r: 10, t: 10),
        ListTile(
          leading:
              "https://avatars0.githubusercontent.com/u/64968311?s=400&u=58608acdd99c0ebe6ce0d97141cca3d297bb28d8&v=4"
                  .mxCircleNetWorkImage(),
          title: "Rohit Sharma 140 Against Pakistan".text(),
          subtitle: MxRowSS().list([
            "Neel Patel".textMaterial(),
            "     2d ago.".textMaterial(),
            10.0.sizedWidth(),
            "Views: 10K.".textMaterial(),
          ]),
          trailing: Icons.more_vert.mxIcons(),
        ),
        Divider(
          height: 1,
        )
      ]).mxContainer(padding: EdgeInsets.zero, color: Colors.white);
    }.mxListVB(
        itemCount: 10, shrinkWrap: true, physics: ClampingScrollPhysics());
  }
}
