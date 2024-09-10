import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svgtool/application/components/loading.dart';

import 'navbar.dart';

final StateProvider<bool> activeSecondbar = StateProvider((_) => true);

class VSAppBodyWidget extends ConsumerWidget {
  const VSAppBodyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Row(
        children: [
          const VSNavbar(),
          ref.watch(activeSecondbar)
              ? const _SecondNavbarWidget()
              : const SizedBox(width: 0),
          Expanded(
              child: Container(
                  height: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text("Hello World"),
                  ))),
        ],
      ),
    );
  }
}

class _SecondNavbarWidget extends ConsumerWidget {
  const _SecondNavbarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text("Hello2"),
    );
  }
}
