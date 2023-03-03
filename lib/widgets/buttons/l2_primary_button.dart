import 'package:flutter/material.dart';

class L2PrimaryButton extends StatelessWidget {
  const L2PrimaryButton({
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
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: ElevatedButton(
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
      ),
    );
  }
}
