import 'package:flutter/material.dart';

import 'route.dart';
import 'theme.dart';

class WebApplication extends StatefulWidget {
  const WebApplication({super.key});

  @override
  State<WebApplication> createState() => _WebApplicationState();
}

class _WebApplicationState extends State<WebApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mobile App',
      routerConfig: webRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
        primaryColor: STWebAppTheme.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(size: 24),
        textButtonTheme:
            TextButtonThemeData(style: STWebAppTheme.flatButtonStyle),
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: STWebAppTheme.raisedButtonStyle),
        filledButtonTheme:
            FilledButtonThemeData(style: STWebAppTheme.filledButtonStyle),
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: STWebAppTheme.outlineButtonStyle),
      ),
      darkTheme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.black,
          iconTheme: const IconThemeData(size: 24)),
      color: Colors.white,
    );
  }
}
