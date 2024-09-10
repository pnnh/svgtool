import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svgtool/application/pages/desktop/home.dart';
import 'pages/mobile/home.dart';
import 'pages/web/home.dart';

final GoRouter globalRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          return const WHomePage();
        }

        if (Platform.isMacOS ||
            Platform.isLinux ||
            Platform.isWindows ||
            Platform.isFuchsia) {
          return const DHomePage();
        }
        if (Platform.isAndroid || Platform.isIOS) {
          return const MHomePage();
        }

        throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
      },
    ),
  ],
);
