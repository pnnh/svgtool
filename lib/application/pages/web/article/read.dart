import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:polaris/application/pages/partial/not_found.dart';
import 'package:polaris/application/pages/partial/page_loading.dart';
import 'package:polaris/models/article.dart';
import 'package:polaris/services/web/articles.dart';

class WToolsSvgPage extends StatefulWidget {
  final Map<String, String> queryParameters;

  const WToolsSvgPage(this.queryParameters, {super.key});

  @override
  State<WToolsSvgPage> createState() => _WToolsSvgPageState();
}

class _WToolsSvgPageState extends State<WToolsSvgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("北极星"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "预览SVG",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ]),
                )
              ],
            )),
      ),
    );
  }
}
