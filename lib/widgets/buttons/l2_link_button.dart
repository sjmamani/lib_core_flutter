import 'package:flutter/material.dart';

class L2LinkButton extends StatelessWidget {
  const L2LinkButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 41,
    this.width = double.infinity,
    this.color,
    this.textColor,
  }) : super(key: key);

  final Widget child;
  final double height;
  final double width;
  final Color? color;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: height),
      child: TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color,
          disabledForegroundColor:
              color == null ? null : color!.withOpacity(0.38),
          disabledBackgroundColor:
              color == null ? null : color!.withOpacity(0.12),
        ),
        child: child,
      ),
    );
  }
}
