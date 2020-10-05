import 'package:material_x/material_x.dart';

class RecentVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (context, index) {
      return mxColumn
          .list([
            "https://images.indianexpress.com/2020/01/rohit-sharma-1200-1.jpg"
                .decorationINToCover()
                .mxContainer(width: 160, height: 80, padding: EdgeInsets.zero),
            ListTile(
              title: "Rohit Sharma || Rohit the Hit-man Show || Neel Patel"
                  .textMaterial(fontsize: 10),
              subtitle: "Md Zeeshan".textMaterial(
                  color: Colors.grey.withOpacity(0.7), fontsize: 10),
              trailing:
                  Icons.more_vert.mxIcons(color: Colors.grey).mxtp(value: 10),
            )
          ])
          .mxContainer(width: 160, padding: EdgeInsets.zero)
          .mxrp(value: 5);
    }
        .mxListVBH(itemCount: 10)
        .mxContainer(height: 155, padding: EdgeInsets.zero);
  }
}
