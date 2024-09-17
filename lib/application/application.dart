import 'package:svgtool/application/pages/web/application.dart';
import 'package:svgtool/application/pages/desktop/route.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

Future<Widget> initApp() async {
  if (kIsWeb) {
    return const WebApplication();
  }

  // if (Platform.isMacOS ||
  //     Platform.isLinux ||
  //     Platform.isWindows ||
  //     Platform.isFuchsia) {
  //   return const DHomePage();
  // }
  // if (Platform.isAndroid || Platform.isIOS) {
  //   return const MHomePage();
  // }

  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}
