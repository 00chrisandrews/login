import 'package:login/UI/explore_page.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/select_item_page.dart';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

class CameraApp extends StatefulWidget {
  static String tag = 'CameraApp';

  @override
  _CameraAppState createState() => new _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = new CameraController(cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Widget cameraWidget() {
    if (!controller.value.isInitialized) {
      return null;
    }
    return new AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: new CameraPreview(controller));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF575757),
        appBar: new AppBar(
          title: const Text("Evergreen"),
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomePage.tag);
              },
            ),
            IconButton(
              icon: Icon(Icons.explore),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(ExplorePage.tag);
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            new Container(
              alignment: AlignmentDirectional.topCenter,
              child: cameraWidget(),
            ),
            new Expanded(
              child: Container(
                width: 90.0,
                child: new FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  shape: const CircleBorder(),
                  child: new Icon(
                    Icons.camera,
                    size: 40.0,
                  ),
                  onPressed: () {
                    Navigator
                        .of(context)
                        .pushReplacementNamed(SelectItemPage.tag);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
