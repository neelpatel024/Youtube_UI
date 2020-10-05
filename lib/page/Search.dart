import 'package:material_x/material_x.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return (context, index) {
      return ListTile(
        onTap: () {},
        leading: Icons.history.mxIcons(),
        title: "Neel Patel".text(),
      );
    }.mxListVB(itemCount: 10).mxScaffold(
            appBar: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            suffixIcon:
                Icons.search.mxIcons(color: Colors.black.withOpacity(0.5)),
            hintText: "Search",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        )
                .mxContainer(
                    rounded: 5,
                    shadowColor: Colors.grey.withOpacity(0.7),
                    height: 40,
                    color: Colors.white.withOpacity(0.7),
                    padding: EdgeInsets.only(top: 5, bottom: 5))
                .mxrp(value: 10)
                .mxAppBar(
                    titleSpacing: 0.0,
                    backgroundColor: Colors.white,
                    brightness: Brightness.light,
                    leading: BackButton(
                      color: Colors.black,
                    )));
  }
}
