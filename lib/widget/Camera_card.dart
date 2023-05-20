import 'dart:async';

import 'package:arcadia_app/models/colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraCard extends StatefulWidget {
  const CameraCard({super.key});

  @override
  State<CameraCard> createState() => _CameraCardState();
}

Timer? cameraTimer;

class _CameraCardState extends State<CameraCard> {
  Widget VideoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.black),
          width: 182,
          height: 222,
        ),
        SizedBox(width: 9),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.black),
          width: 182,
          height: 222,
        )
      ],
    );
  }

  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[1],
      ResolutionPreset.high,
      enableAudio: false,
    );
    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // get screen size
    final size = MediaQuery.of(context).size;

    // calculate scale for aspect ratio widget
    var scale = cameraController.value.aspectRatio / size.aspectRatio;
    if (cameraController.value.isInitialized) {
      return CameraPreview(cameraController);
    } else {
      return const SizedBox();
    }
  }
}
