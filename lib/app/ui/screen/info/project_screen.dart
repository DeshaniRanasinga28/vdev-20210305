import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vdev/app/global/global.dart' as global;
import 'package:webview_flutter/webview_flutter.dart';

class ProjectScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProjectScreenState();
  }
}

class _ProjectScreenState extends State<ProjectScreen>{
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    global.tabIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          gestureRecognizers: [
            Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer())].toSet(),
          initialUrl: global.github_url,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}