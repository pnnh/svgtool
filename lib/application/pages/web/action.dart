import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svgtool/application/pages/web/theme.dart';

import '../common/size.dart';

class WSvgActionPartial extends ConsumerWidget {
  const WSvgActionPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: STWebAppTheme.rootFontSize * 32,
      height: STWebAppTheme.rootFontSize * 3,
      child: Row(
        children: [
          WColorPickerPartial(),
          SizedBox(
            width: STWebAppTheme.rootFontSize,
          ),
          WSizePickerPartial(),
        ],
      ),
    );
  }
}

class WColorPickerPartial extends ConsumerWidget {
  const WColorPickerPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: STWebAppTheme.rootFontSize * 16,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(color: STWebAppTheme.lightBorderColor, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Container(
            color: Colors.blueAccent,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.deepOrangeAccent,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.amberAccent,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.deepPurpleAccent,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.red,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.orange,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            color: Colors.teal,
            width: STWebAppTheme.rootFontSize * 1.2,
            height: STWebAppTheme.rootFontSize * 1.2,
          ),
          SizedBox(
            width: 6,
          ),
          Text("#"),
          Container(
            height: STWebAppTheme.rootFontSize,
            width: 48,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: STWebAppTheme.normalBorderColor))),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: STAppTheme.rootFontSize * 0.5),
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}

class WSizePickerPartial extends ConsumerWidget {
  const WSizePickerPartial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: STWebAppTheme.rootFontSize * 16 - STWebAppTheme.rootFontSize,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(color: STWebAppTheme.lightBorderColor, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Container(
              height: STWebAppTheme.rootFontSize * 1.2,
              child: Text("8px",
                  style: TextStyle(
                    fontSize: STWebAppTheme.rootFontSize * 0.8,
                  ))),
          SizedBox(
            width: 6,
          ),
          Container(
              height: STWebAppTheme.rootFontSize * 1.2,
              child: Text("16px",
                  style: TextStyle(
                    fontSize: STWebAppTheme.rootFontSize * 0.8,
                  ))),
          SizedBox(
            width: 6,
          ),
          Container(
              height: STWebAppTheme.rootFontSize * 1.2,
              child: Text("32px",
                  style: TextStyle(
                    fontSize: STWebAppTheme.rootFontSize * 0.8,
                  ))),
          SizedBox(
            width: 6,
          ),
          Container(
              height: STWebAppTheme.rootFontSize * 1.2,
              child: Text("64px",
                  style: TextStyle(
                    fontSize: STWebAppTheme.rootFontSize * 0.8,
                  ))),
          SizedBox(
            width: 6,
          ),
          Container(
              height: STWebAppTheme.rootFontSize * 1.2,
              child: Text("128px",
                  style: TextStyle(
                    fontSize: STWebAppTheme.rootFontSize * 0.8,
                  ))),
          SizedBox(
            width: 6,
          ),
          Container(
              height: STWebAppTheme.rootFontSize,
              width: STWebAppTheme.rootFontSize * 2,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: STWebAppTheme.normalBorderColor))),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: STAppTheme.rootFontSize * 0.8),
                onChanged: (value) {},
              )),
          SizedBox(
            width: 4,
          ),
          Text("px")
        ],
      ),
    );
  }
}
