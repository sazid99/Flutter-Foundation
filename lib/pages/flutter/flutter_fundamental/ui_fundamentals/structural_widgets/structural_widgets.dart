import 'package:flutter/material.dart';
import 'package:flutter_foundation/custom_widgets/custom_appbar.dart';
import 'package:flutter_foundation/custom_widgets/custom_elevated_button.dart';
import 'package:flutter_foundation/pages/home_page.dart';

class StructuralWidgets extends StatelessWidget {
  const StructuralWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final center = MainAxisAlignment.center;
    return Scaffold(
      appBar: CustomAppbar(text: "Structural Widgets"),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Column(
              mainAxisAlignment: center,
              spacing: 20,
              children: [
                Row(
                  spacing: 20,
                  mainAxisAlignment: center,
                  children: [
                    CustomElevatedButton(
                        size: 22,
                        text: "1. MaterialApp",
                        path: () => HomePage()),
                    CustomElevatedButton(
                        size: 22, text: "2. Scaffold", path: () => HomePage()),
                  ],
                ),
                Row(
                  spacing: 20,
                  mainAxisAlignment: center,
                  children: [
                    CustomElevatedButton(
                        size: 22, text: "3. AppBar", path: () => HomePage()),
                    CustomElevatedButton(
                        size: 22, text: "4. body", path: () => HomePage()),
                  ],
                ),
                Row(
                  spacing: 20,
                  mainAxisAlignment: center,
                  children: [
                    CustomElevatedButton(
                        size: 22,
                        text: "5. bottomNavigationBar",
                        path: () => HomePage()),
                    CustomElevatedButton(
                        size: 22, text: "6. Container", path: () => HomePage()),
                  ],
                ),
                Row(
                  spacing: 20,
                  mainAxisAlignment: center,
                  children: [
                    CustomElevatedButton(
                        size: 22,
                        text: "6. Row and Column",
                        path: () => HomePage()),
                    CustomElevatedButton(
                        size: 22, text: "8. ListView", path: () => HomePage()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
