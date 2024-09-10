import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

import 'package:svgtool/application/pages/common/tools.dart';
import 'package:svgtool/utils/logger.dart';

class MHomePage extends ConsumerStatefulWidget {
  const MHomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<MHomePage> {
  late StreamSubscription _intentDataStreamSubscription;

  //List<SharedFile>? list;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[HomeBody(), ToolsBody()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Venus"),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '照片',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '相册',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '工具',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }

  void _onItemTapped(int index) {
    logger.d("点击了底部导航栏 $index");
    setState(() {
      _selectedIndex = index;
    });
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

Widget buildImageCard(BuildContext context, String? filePath) {
  Widget imageWidget;
  if (filePath == null) {
    imageWidget = Image.asset('bundle/images/brand.png');
  } else {
    var file = File(filePath);
    imageWidget = Image.file(
      file,
      fit: BoxFit.cover,
    );
  }
  return Container(
    margin: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      color: Theme.of(context).cardColor,
    ),
    child: ClipRRect(
      //是ClipRRect，不是ClipRect
      borderRadius: BorderRadius.circular(8),
      child: imageWidget,
    ),
  );
}
