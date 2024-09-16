import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svgtool/application/pages/common/size.dart';
import 'package:svgtool/application/pages/web/svgeditor.dart';
import 'package:svgtool/application/pages/web/svgviewer.dart';

import 'appbar.dart';

class WHomePage extends ConsumerWidget {
  const WHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: WAppBarPartial(),
      body: SafeArea(
        child: WAppBodyPartial(),
      ),
    );
  }
}

class WAppBodyPartial extends ConsumerWidget {
  const WAppBodyPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(top: AppTheme.rootFontSize),
      width: double.infinity,
      child: Column(
        children: [
          WSvgEditorPartial(),
          SizedBox(
            height: AppTheme.rootFontSize,
          ),
          WSvgViewerPartial()
        ],
      ),
    );
  }
}
