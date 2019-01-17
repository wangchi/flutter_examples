import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;

  EmptyAppBar({ this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color != null ? color : Color.fromRGBO(255, 255, 255, 1.0),
      // color: Color.fromRGBO(0, 0, 0, 1.0)
//      color: Color.fromRGBO(0, 0, 0, 1.0)
    );
  }

  // TODO: implement preferredSize
  @override
  // Size get preferredSize => new Size(0.0, Platform.isAndroid ? 20.0 : 0.0);
  Size get preferredSize => new Size(0.0, 0.0);
}