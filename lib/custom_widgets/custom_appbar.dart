import 'package:flutter/material.dart';
import 'package:flutter_foundation/themes/theme.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget{
  final String text;
  const CustomAppbar({
    super.key,
    required this.text,
    });

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();

   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    final themProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
      title: Text(widget.text),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            setState(
              () {
                themProvider.toggleTheme();
              },
            );
          },
          icon: Icon(
            themProvider.themeData == ThemeData.light()
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
        )
      ],
    );
  }
}
