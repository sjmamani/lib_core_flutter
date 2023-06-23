import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
SnackBar L2SnackBar(String text) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    content: Text(text),
  );
}
