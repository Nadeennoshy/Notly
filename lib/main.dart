import 'package:flutter/material.dart';
import 'package:notly/views/onboarding_view.dart';

void main() {
  runApp(const NotlyApp());
}

class NotlyApp extends StatelessWidget {
  const NotlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}