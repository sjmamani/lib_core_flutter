import 'package:flutter/material.dart';
import 'package:lib_core_flutter/widgets/buttons/l2_secondary_button.dart';

import '../constants/l2_colors.dart';
import 'buttons/l2_link_button.dart';
import 'buttons/l2_primary_button.dart';

class L2Dialog extends StatelessWidget {
  const L2Dialog({
    Key? key,
    this.title,
    required this.textWidget,
    this.textButton,
    this.textCancelButton,
    this.primaryButtonColor,
    this.onPressed,
    this.onCancelPressed,
    this.titleStyle,
    this.hasPrimaryButton = true,
  }) : super(key: key);

  final String? title;
  final TextStyle? titleStyle;
  final Widget textWidget;
  final String? textButton;
  final String? textCancelButton;
  final VoidCallback? onPressed;
  final VoidCallback? onCancelPressed;
  final Color? primaryButtonColor;
  final bool hasPrimaryButton;

  @override
  Widget build(BuildContext context) {
    final isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      title: title != null
          ? Text(
              title!,
              textAlign: TextAlign.center,
              style: titleStyle?.copyWith(
                color: isLightMode ? L2Colors.darkGrey : L2Colors.highEmphasis,
                height: 1.65,
              ),
            )
          : null,
      content: Column(
        children: <Widget>[
          textWidget,
          const SizedBox(height: 20),
          if (textButton != null)
            _PrimaryButtonDialog(
              onPressed,
              textButton,
              isPrimary: hasPrimaryButton,
            ),
          if (textCancelButton != null && textButton != null)
            const SizedBox(height: 10),
          if (textCancelButton != null)
            L2LinkButton(
              onPressed: onCancelPressed,
              child: Text(textCancelButton!),
            ),
        ],
      ),
    );
  }
}

class _PrimaryButtonDialog extends StatelessWidget {
  const _PrimaryButtonDialog(
    this.onPressed,
    this.textButton, {
    required this.isPrimary,
    Key? key,
  }) : super(key: key);

  final void Function()? onPressed;
  final String? textButton;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return isPrimary
        ? L2PrimaryButton(
            onPressed: onPressed == null ? null : () => onPressed!.call(),
            child: Text(textButton ?? 'Volver'),
          )
        : L2SecondaryButton(
            onPressed: onPressed == null ? null : () => onPressed!.call(),
            child: Text(textButton ?? 'Volver'),
          );
  }
}
