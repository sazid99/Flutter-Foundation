import 'package:flutter/material.dart';
import 'package:flutter_foundation/custom_widgets/custom_appbar.dart';
import 'package:flutter_foundation/custom_widgets/custom_elevated_button.dart';
import 'package:flutter_foundation/pages/flutter/flutter_fundamental/ui_fundamentals/structural_widgets/structural_widgets.dart';
import 'package:flutter_foundation/pages/home_page.dart';

class UiFundamentals extends StatelessWidget {
  const UiFundamentals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "UI/Ux Fundamentals"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomElevatedButton(
                size: 22,
                text: "1. Structural Widgets",
                path: () => StructuralWidgets()),
            CustomElevatedButton(
                size: 22,
                text: "2. Interactive Widgets",
                path: () => HomePage()),
            CustomElevatedButton(
                size: 22,
                text: "3. Decorational Style Widgets",
                path: () => HomePage()),
            CustomElevatedButton(
                size: 22,
                text: "4. Media and Image Widgets",
                path: () => HomePage()),
          ],
        ),
      ),
    );
  }
}
