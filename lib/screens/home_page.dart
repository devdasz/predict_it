import 'package:flutter/material.dart';
import 'action_bar.dart';
import 'image_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const height = 300.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageHeader(),
        // Actionbar
        ActionBar(),
      ],
    );
  }
}
