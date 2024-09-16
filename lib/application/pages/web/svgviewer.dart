import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:svgtool/application/pages/common/size.dart';

import '../common/state.dart';

class WSvgViewerPartial extends ConsumerWidget {
  const WSvgViewerPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SvgModel> svgModelState = ref.watch(svgModelStateProvider);

    return Container(
      width: AppTheme.rootFontSize * 32,
      height: AppTheme.rootFontSize * 24,
      decoration: BoxDecoration(
          border: new Border.all(color: Color(0xFFCCCCCC), width: 1),
          borderRadius: new BorderRadius.circular((4.0))),
      padding: const EdgeInsets.all(16),
      // child: FutureBuilder<SvgCanvasPainter>(
      //   future: SvgCanvasPainter.loadSvg('test', 'test', 1922, 1024),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done &&
      //         snapshot.data != null) {
      //       return Image.memory(
      //         snapshot.data!.getImage(),
      //         fit: BoxFit.contain,
      //       );
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
      child: switch (svgModelState) {
        AsyncData(:final value) => value.painter != null
            ? Image.memory(
                value.painter!.getImage(),
                fit: BoxFit.contain,
              )
            : Text('Activity: ${value.text}'),
        AsyncError() =>
          const Center(child: Text('Oops, something unexpected happened')),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
