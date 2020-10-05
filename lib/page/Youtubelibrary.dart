import 'package:material_x/material_x.dart';
import 'package:youtube_clone_app/modules/dropdown.dart';
import 'package:youtube_clone_app/modules/recently.dart';
import 'package:youtube_clone_app/modules/widgets.dart';

class Youtubelibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mxListView.list([
      appBar(context),
      "Recent".text().mxlbtp(l: 20, t: 16, b: 5),
      RecentVideo().mxContainer(),
      Divider(),
      //1
      mxRowSS.list([
        10.0.sizedWidth(),
        Icons.history.mxIcons(color: Colors.grey[600]),
        10.0.sizedWidth(),
        "History".text().mxtp(value: 4),
      ]).mxContainer(onTap: () {}),
      //2
      mxRowSS.list([
        10.0.sizedWidth(),
        Icons.file_download.mxIcons(color: Colors.grey[600]).mxtp(value: 5),
        10.0.sizedWidth(),
        mxColumn.list([
          "Downloads".text().mxtp(value: 4),
          "10 videos"
              .textMaterial(color: Colors.grey, fontsize: 11)
              .mxtp(value: 4),
        ])
      ]).mxContainer(onTap: () {}),
      //3
      mxRowSS.list([
        10.0.sizedWidth(),
        Icons.ondemand_video.mxIcons(color: Colors.grey[600]),
        10.0.sizedWidth(),
        "Your videos".text().mxtp(value: 4),
      ]).mxContainer(onTap: () {}),
      mxRowSS.list([
        10.0.sizedWidth(),
        Icons.label.mxIcons(color: Colors.grey[600]),
        10.0.sizedWidth(),
        "Purchases".text().mxtp(value: 4),
      ]).mxContainer(onTap: () {}),
      mxRowSS.list([
        10.0.sizedWidth(),
        Icons.watch_later.mxIcons(color: Colors.grey[600]),
        10.0.sizedWidth(),
        mxColumn.list([
          "Watch Later".text().mxtp(value: 4),
          "100 unwatched videos "
              .textMaterial(color: Colors.grey, fontsize: 11)
              .mxtp(value: 4),
        ])
      ]).mxContainer(onTap: () {}),
      Divider(),
      mxRowCSB.list([
        "Playlist".text().mxlbtp(l: 20, t: 10, b: 5),
        DropDown(),
      ]),

      mxRowSS.list([
        5.0.sizedWidth(),
        Icons.add.mxIcons(color: Colors.blue[800]),
        8.0.sizedWidth(),
        "New playlist".textMaterial(color: Colors.blue[800]).mxtp(value: 4),
      ]).mxContainer(),
      mxRowSS.list([
        5.0.sizedWidth(),
        Icons.thumb_up.mxIcons(),
        8.0.sizedWidth(),
        mxColumn.list([
          "Like videos".text().mxtp(value: 4),
          "164 videos "
              .textMaterial(color: Colors.grey, fontsize: 11)
              .mxtp(value: 4),
        ])
      ]).mxContainer(),
    ]);
  }
}
