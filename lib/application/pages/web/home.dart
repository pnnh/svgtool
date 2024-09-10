import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appbar.dart';

class WHomePage extends ConsumerWidget {
  const WHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
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
      width: double.infinity,
      child: WHomeItemPartial(),
    );
  }
}

class WHomeItemPartial extends ConsumerWidget {
  const WHomeItemPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Text("model.title",
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333))),
          ),
          const SizedBox(height: 8),
          Text("无描述",
              style: const TextStyle(fontSize: 14, color: Color(0xff979797))),
        ],
      ),
    );
  }
}
