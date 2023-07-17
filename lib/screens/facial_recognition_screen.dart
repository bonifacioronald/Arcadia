import 'dart:io';

import 'package:arcadia_app/screens/photo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import '../classifier/classifier.dart';
import '../models/colors.dart' as custom_colors;
import 'end_session_screen.dart';

const _labelsFileName = 'assets/labels.txt';
const _modelFileName = 'model_unquant.tflite';

class FacialRecognitionScreens extends StatefulWidget {
  const FacialRecognitionScreens({super.key});
  static const routeName = '/facialrecognition';

  @override
  State<FacialRecognitionScreens> createState() =>
      _FacialRecognitionScreensState();
}

enum _ResultStatus {
  notStarted,
  notFound,
  found,
}

class _FacialRecognitionScreensState extends State<FacialRecognitionScreens> {
  bool _isAnalyzing = false;
  final picker = ImagePicker();
  File? _selectedImageFile;

  // Result
  _ResultStatus _resultStatus = _ResultStatus.notStarted;
  String _plantLabel = ''; // Name of Error Message
  double _accuracy = 0.0;
  double _focus = 0.0;

  late Classifier _classifier;

  @override
  void initState() {
    super.initState();
    _loadClassifier();
  }

  Future<void> _loadClassifier() async {
    debugPrint(
      'Start loading of Classifier with '
      'labels at $_labelsFileName, '
      'model at $_modelFileName',
    );

    final classifier = await Classifier.loadWith(
      labelsFileName: _labelsFileName,
      modelFileName: _modelFileName,
    );

    if (classifier != null) {
      setState(() {
        _classifier = classifier;
      });
    } else {
      debugPrint('Failed to load classifier');
      // Handle the error if necessary
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Text('ARCADIA',
                style: TextStyle(
                    color: custom_colors.primary,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            Text('Concentration Index Detector',
                style: TextStyle(
                  color: custom_colors.backgroundPrimary,
                  fontSize: 16,
                )),
            SizedBox(height: 40),
            _buildPhotolView(),
            SizedBox(height: 20),
            _buildResultView(),
            Spacer(flex: 5),
            _buildPickPhotoButton(
              title: 'Take a photo',
              source: ImageSource.camera,
            ),
            SizedBox(
              height: 6,
            ),
            // ignore: lines_longer_than_80_chars
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(EndSessionScreen.routeName),
              child: Container(
                color: Colors.white,
                child: Text(
                  'End study session',
                  style: TextStyle(fontSize: 16, color: custom_colors.primary),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotolView() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        PlantPhotoView(file: _selectedImageFile),
        _buildAnalyzingText(),
      ],
    );
  }

  Widget _buildAnalyzingText() {
    if (!_isAnalyzing) {
      return const SizedBox.shrink();
    }
    return Text('Analyzing...',
        style: TextStyle(color: Colors.white, fontSize: 16));
  }

  Widget _buildTitle() {
    return Text(
      'ARCADIA',
      style: TextStyle(fontSize: 24, color: custom_colors.primary),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPickPhotoButton({
    required ImageSource source,
    required String title,
  }) {
    return TextButton(
      onPressed: () => _onPickPhoto(source),
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          color: custom_colors.primary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
            child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ))),
      ),
    );
  }

  void _setAnalyzing(bool flag) {
    setState(() {
      _isAnalyzing = flag;
    });
  }

  void _onPickPhoto(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile == null) {
      return;
    }

    final imageFile = File(pickedFile.path);
    setState(() {
      _selectedImageFile = imageFile;
    });

    _analyzeImage(imageFile);
  }

  void _analyzeImage(File image) {
    _setAnalyzing(true);

    final imageInput = img.decodeImage(image.readAsBytesSync())!;

    final resultCategory = _classifier.predict(imageInput);

    final result = resultCategory.score >= 0.8
        ? _ResultStatus.found
        : _ResultStatus.notFound;
    final plantLabel = resultCategory.label;
    final focus = resultCategory.score * 0.9;
    final accuracy = resultCategory.score;

    _setAnalyzing(false);

    setState(() {
      _resultStatus = result;
      _plantLabel = plantLabel;
      _focus = focus;
      _accuracy = accuracy;
    });
  }

  Widget _buildResultView() {
    var title = '';

    if (_resultStatus == _ResultStatus.notFound) {
      title = 'Fail to recognise';
    } else if (_resultStatus == _ResultStatus.found) {
      title = _plantLabel;
    } else {
      title = '';
    }

    //
    var accuracyLabel = '';
    var focusLabel = '';
    if (_resultStatus == _ResultStatus.found) {
      focusLabel = 'Focus: ${((_focus * 100)).toStringAsFixed(2)}%';
      accuracyLabel = 'Accuracy: ${((_accuracy * 100)).toStringAsFixed(2)}%';
    }

    return Column(
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 28,
                color: custom_colors.primary,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(accuracyLabel,
            style: TextStyle(
              fontSize: 16,
              color: custom_colors.backgroundPrimary,
            )),
        Text(focusLabel,
            style: TextStyle(
              fontSize: 16,
              color: custom_colors.backgroundPrimary,
            ))
      ],
    );
  }
}
