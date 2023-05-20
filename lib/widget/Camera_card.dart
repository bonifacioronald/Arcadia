import 'dart:async';

import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/providers/deafult_provider.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CameraCard extends StatefulWidget {
  const CameraCard({super.key});

  @override
  State<CameraCard> createState() => _CameraCardState();
}

Timer? cameraTimer;

class _CameraCardState extends State<CameraCard> {
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
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
    );
    await cameraController.initialize().then((value) {
      Provider.of<DefaultProvider>(context, listen: false)
          .toggleStudyScreenLoading();
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
