import 'package:flutter/material.dart';
import 'package:flutter_foundation/custom_widgets/custom_appbar.dart';
import 'package:flutter_foundation/custom_widgets/custom_elevated_button.dart';
import 'package:flutter_foundation/pages/flutter/flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Flutter Foundation"),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomElevatedButton(text: "Dart", path: () => FlutterPage()),
            CustomElevatedButton(text: "Flutter", path: () => FlutterPage()),
          ],
        ),
      ),
    );
  }
}
