import 'package:material_x/material_x.dart';
import 'package:youtube_clone_app/modules/widgets.dart';

class Youtubeinbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mxListView.list([
      appBar(context),
      (context, index) {
        return mxColumn.list([
          ListTile(
              leading:
                  "https://avatars0.githubusercontent.com/u/64968311?s=400&u=58608acdd99c0ebe6ce0d97141cca3d297bb28d8&v=4"
                      .mxCircleNetWorkImage(),
              title: "2019 IPL WINNER".textMaterial(fontsize: 12),
              subtitle: MxColumn().list([
                "Neel Patel".textMaterial(fontsize: 12),
                "2d ago.".textMaterial(
                    fontsize: 12, color: Colors.grey.withOpacity(0.7)),
              ]),
              trailing: MxRow().list([
                "https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/sspebdh17gzgybio_1592899722.jpeg?tr=w-812,h-464"
                    .decorationINToCover()
                    .mxContainer(width: 100, height: 100),
                5.0.sizedWidth(),
                Icons.more_vert.mxIcons()
              ]).mxContainer(width: 150, padding: EdgeInsets.zero)),
        ]).mxContainer();
      }.mxListVB(
          itemCount: 20, shrinkWrap: true, physics: ClampingScrollPhysics())
    ]);
  }
}
