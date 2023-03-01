import 'package:flutter/material.dart';

class L2SecondaryButton extends StatelessWidget {
  const L2SecondaryButton({
    Key? key,
    required this.child,
    this.height = 41,
    this.width = double.infinity,
    this.color,
    this.textColor,
    this.onPressed,
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
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
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
