import 'package:material_x/material_x.dart';

class BottomBar extends StatefulWidget {
  final List<Widget> bottomNavBar;

  const BottomBar({Key key, this.bottomNavBar}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return mxRow.list(widget.bottomNavBar).mxContainer(
        height: 65,
        padding: EdgeInsets.zero,
        blurRadius: 2,
        shadowColor: Colors.black,
        color: Colors.white);
  }
}

String selectedBottom = "Home";

class Bar extends StatefulWidget {
  final bool condition;
  final Function onTap;
  final String title;
  final IconData icon;

  const Bar({Key key, this.onTap, this.title, this.icon, this.condition})
      : super(key: key);
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return mxColumnCC.list([
      widget.icon.mxIcons(
        color: widget.condition ? Colors.red : Colors.grey,
      ),
      5.0.sizedHeight(),
      widget.title.textMaterial(
          color: widget.condition ? Colors.red : Colors.grey, fontsize: 10)
    ]).mxContainer(
        onTap: widget.onTap,
        width: mxwidth(context) / 5,
        padding: EdgeInsets.all(5.0));
  }
}
