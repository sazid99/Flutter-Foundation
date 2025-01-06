import 'package:flutter/material.dart';
import 'package:flutter_foundation/custom_widgets/custom_appbar.dart';
import 'package:flutter_foundation/custom_widgets/custom_elevated_button.dart';
import 'package:flutter_foundation/pages/home_page.dart';

class FlutterFundamental extends StatelessWidget {
  const FlutterFundamental({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Flutter Fundamental"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomElevatedButton(
                size: 22,
                text: "1. UI/Ux Fundamentals",
                path: () => HomePage()),
            CustomElevatedButton(
                size: 22,
                text: "2. Handling User Inputs",
                path: () => HomePage()),
            CustomElevatedButton(
                size: 22,
                text: "3. Core Mobile Features",
                path: () => HomePage()),
          ],
        ),
      ),
    );
  }
}
