import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: custom_colors.backgroundPrimary,
      child: Center(
        child: CircularProgressIndicator(
          color: custom_colors.primary,
        ),
      ),
    );
  }
}
