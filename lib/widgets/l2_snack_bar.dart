import 'package:flutter/material.dart';

class L2SnackBar extends StatelessWidget {
  const L2SnackBar({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      content: Text(text),
    );
  }
}
