import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double size;
  final Widget Function() path;
  const CustomElevatedButton({
    super.key,
    required this.text,
    this.size = 25,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => path(),
          ),
        );
      },
      style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(200, 100)),
          backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
      ),
    );
  }
}
