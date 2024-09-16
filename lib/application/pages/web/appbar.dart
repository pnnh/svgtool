import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/size.dart';

class WAppBarPartial extends ConsumerWidget implements PreferredSizeWidget {
  final double appbarHeight = AppTheme.rootFontSize * 4;

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
                fontSize: AppTheme.rootFontSize * 1.5,
                fontWeight: FontWeight.bold)),
        const Spacer(),
      ]),
    );
  }
}
