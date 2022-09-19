import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prediction App",
      theme: ThemeData(primaryColor: Color(0xFFE432C1)),
      home: const PredictionApp(),
    );
  }
}

class PredictionApp extends StatelessWidget {
  const PredictionApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

    return Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
