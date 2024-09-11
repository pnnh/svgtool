import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DHomePage extends ConsumerWidget {
  const DHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Desktop Home Page"),
        ),
      ),
    );
  }
}
