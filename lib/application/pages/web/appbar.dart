import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/size.dart';

class WAppBarPartial extends ConsumerWidget implements PreferredSizeWidget {
  final double appbarHeight = STAppTheme.rootFontSize * 3;

  WAppBarPartial({super.key});

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: appbarHeight,
      child: Row(children: [
        const Spacer(),
        Text("SVG预览工具",
            style: TextStyle(
                fontSize: STAppTheme.rootFontSize * 1.3,
                fontWeight: FontWeight.bold)),
        const Spacer(),
      ]),
    );
  }
}
