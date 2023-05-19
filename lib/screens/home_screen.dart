import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: custom_colors.backgroundPrimary,
    );
  }
}
