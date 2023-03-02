import 'package:flutter/material.dart';

import '../constants/l2_colors.dart';
import 'buttons/l2_link_button.dart';
import 'buttons/l2_primary_button.dart';

class L2AlertDialog extends StatelessWidget {
  const L2AlertDialog({
    Key? key,
    required this.content,
    this.title,
    this.textCancelButton,
    this.actionButton,
    this.onPressed,
    this.onCancelPressed,
    this.titleStyle,
  }) : super(key: key);

  /// Typically a [Text] or [RichText] widget.
  final Widget content;

  final String? title;
  final TextStyle? titleStyle;

  /// Typically a [L2PrimaryButton] or [L2SecondaryButton] widget.
  final Widget? actionButton;

  /// Text to display on [L2LinkButton]. If null, [L2LinkButton] is not added.
  ///
  /// Typically has the text 'Volver'.
  final String? textCancelButton;

  final VoidCallback? onPressed;
  final VoidCallback? onCancelPressed;

  @override
  Widget build(BuildContext context) {
    final isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      title: title != null ? Text(title!, textAlign: TextAlign.center) : null,
      titleTextStyle: titleStyle?.copyWith(
        color: isLightMode ? L2Colors.darkGrey : L2Colors.highEmphasis,
        height: 1.65,
      ),
      content: content,
      actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      actions: [
        if (actionButton != null) actionButton!,
        if (textCancelButton != null) ...[
          const SizedBox(height: 10),
          L2LinkButton(
            onPressed: onCancelPressed,
            child: Text(textCancelButton!),
          ),
        ],
      ],
    );
  }
}
