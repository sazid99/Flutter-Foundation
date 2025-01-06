import 'package:flutter/material.dart';
import 'package:flutter_foundation/custom_widgets/custom_appbar.dart';
import 'package:flutter_foundation/custom_widgets/custom_elevated_button.dart';
import 'package:flutter_foundation/pages/flutter/flutter_fundamental/flutter_fundamental.dart';
import 'package:flutter_foundation/pages/home_page.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Flutter"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomElevatedButton(
                size: 22,
                text: "1. Flutter Fundamentals",
                path: () => FlutterFundamental()),
            CustomElevatedButton(
                size: 22, text: "2. Flutter Advance", path: () => HomePage()),
          ],
        ),
      ),
    );
  }
}
