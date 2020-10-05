import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_x/material_x.dart';

import 'package:youtube_clone_app/modules/horizontal_list.dart';
import 'package:youtube_clone_app/modules/widgets.dart';
import 'package:youtube_clone_app/modules/youtube_videos_list.dart';

class Youtubeexplore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mxListView.list([
      
      appBar(context),
      mxRowCSB.list([
        mxRowSS
            .list([
              5.0.sizedWidth(),
              Icons.trending_up.mxIcons(color: Colors.white),
              20.0.sizedWidth(),
              "Trending".textMaterialColorWhite(fontsize: 14).mxtp(value: 5)
            ])
            //red
            .mxContainer(
              color: Colors.red.withOpacity(0.7),
              rounded: 6,
              width: mxwidth(context) / 2 - 20,
              onTap: () {},
            )
            .mxlp(value: 5),
        mxRowSS
            .list([
              5.0.sizedWidth(),
              Icons.music_video.mxIcons(color: Colors.white),
              20.0.sizedWidth(),
              "Music".textMaterialColorWhite(fontsize: 14).mxtp(value: 5)
            ])
            //cyan
            .mxContainer(
              color: Colors.cyan.withOpacity(0.7),
              rounded: 6,
              width: mxwidth(context) / 2 - 20,
              onTap: () {},
            )
            .mxrp(value: 5),
      ]).mxap(value: 10),

      mxRowCSB.list([
        mxRowSS
            .list([
              5.0.sizedWidth(),
              Icons.gamepad.mxIcons(color: Colors.white),
              20.0.sizedWidth(),
              "Games".textMaterialColorWhite(fontsize: 14).mxtp(value: 5)
            ])
            //brown
            .mxContainer(
              color: Colors.brown.withOpacity(0.7),
              rounded: 6,
              width: mxwidth(context) / 2 - 20,
              onTap: () {},
            )
            .mxlp(value: 5),
        mxRowSS
            .list([
              5.0.sizedWidth(),
              FontAwesomeIcons.newspaper.mxIcons(color: Colors.white),
              20.0.sizedWidth(),
              "News".textMaterialColorWhite(fontsize: 14).mxtp(value: 5)
            ])
            //blue
            .mxContainer(
              color: Colors.blue.withOpacity(0.7),
              rounded: 6,
              width: mxwidth(context) / 2 - 20,
              onTap: () {},
            )
            .mxrp(value: 5),
      ]).mxlrp(l: 10, r: 10),
      mxRowCSB
          .list([
            mxRowSS
                .list([
                  5.0.sizedWidth(),
                  Icons.local_movies.mxIcons(color: Colors.white),
                  20.0.sizedWidth(),
                  "Movies".textMaterialColorWhite(fontsize: 14).mxtp(value: 5)
                ])
                //amber
                .mxContainer(
                  color: Colors.amber.withOpacity(0.7),
                  rounded: 6,
                  width: mxwidth(context) / 2 - 20,
                  onTap: () {},
                )
                .mxlp(value: 5),
            mxRowSS
                .list([
                  5.0.sizedWidth(),
                  FontAwesomeIcons.tshirt.mxIcons(color: Colors.white),
                  20.0.sizedWidth(),
                  "Fashion & Be.."
                      .text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: Colors.white))
                      .mxtp(value: 5),
                ])
                //gray
                .mxContainerGradient(
                  gradient:
                      [Colors.black, Colors.grey.withOpacity(0.7)].mxLGClamp(),
                  width: mxwidth(context) / 2 - 20,
                  rounded: 6,
                  onTap: () {},
                )
                .mxrp(value: 5),
          ])
          .mxlrp(l: 10, r: 10)
          .mxtp(value: 10),
      mxRowCSB
          .list([
            mxRowSS
                .list([
                  5.0.sizedWidth(),
                  FontAwesomeIcons.lightbulb.mxIcons(color: Colors.white),
                  20.0.sizedWidth(),
                  "Learning"
                      .textMaterialColorWhite(fontsize: 14)
                      .mxtp(value: 5),
                ])
                //green
                .mxContainer(
                  color: Colors.green.withOpacity(0.7),
                  width: mxwidth(context) / 2 - 20,
                  rounded: 6,
                  onTap: () {},
                )
                .mxlp(value: 5),
            mxRowSS
                .list([
                  5.0.sizedWidth(),
                  Icons.graphic_eq.mxIcons(color: Colors.white),
                  20.0.sizedWidth(),
                  "live".textMaterialColorWhite(fontsize: 14).mxtp(value: 5),
                ])
                //deeporange
                .mxContainer(
                  color: Colors.deepOrange.withOpacity(0.7),
                  width: mxwidth(context) / 2 - 20,
                  rounded: 6,
                  onTap: () {},
                )
                .mxrp(value: 5)
          ])
          .mxlrp(l: 10, r: 10)
          .mxtp(value: 10),
      mxRowCSB
          .list([
            mxRowSS
                .list([
                  5.0.sizedWidth(),
                  FontAwesomeIcons.youtubeSquare.mxIcons(color: Colors.white),
                  20.0.sizedWidth(),
                  "#WithMe".textMaterialColorWhite(fontsize: 14).mxtp(value: 5),
                ])
                //pink
                .mxContainer(
                  color: Colors.pink.withOpacity(0.7),
                  width: mxwidth(context) / 2 - 20,
                  rounded: 6,
                  onTap: () {},
                )
                .mxlp(value: 5),
          ])
          .mxlrp(l: 10, r: 10)
          .mxtp(value: 10),
      20.0.sizedHeight(),
      YoutubeHorizontalList()
          .mxtp(value: 20)
          .mxContainer(
              height: 170, padding: EdgeInsets.zero, color: Colors.white)
          .mxCard(),
      YoutubeVideoList(),
      Divider(
        height: 8,
      )
    ]).mxScaffold(backgroundColor: Colors.white.withOpacity(0.1));
  }
}
