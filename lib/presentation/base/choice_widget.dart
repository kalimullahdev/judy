import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';

Size _textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size;
}

class ChoiceWidget extends StatelessWidget {
  final String text;
  final bool isChecked;
  final LinearGradient? linearGradient;
  final Color? textColor;
  final Color? iconColor;
  final Color? iconUncheckedColor;
  final IconData? iconUncheck;
  final bool showCheckAtTrailing;
  const ChoiceWidget({
    Key? key,
    required this.text,
    this.isChecked = false,
    this.linearGradient,
    this.textColor,
    this.showCheckAtTrailing = false,
    this.iconUncheckedColor,
    this.iconUncheck,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _textSize(
            text,
            TextStyle(
              color: textColor ?? Colors.black,
              fontWeight:
                  textColor != null ? FontWeight.bold : FontWeight.normal,
            ),
          ).width +
          40,
      height: 40,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: linearGradient ??
            const LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 20.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: showCheckAtTrailing
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${text[0].toUpperCase()}${text.substring(1)}",
                  style: TextStyle(
                    color: textColor ?? Colors.black,
                    fontWeight:
                        textColor != null ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 8),
                isChecked
                    ? CircleAvatar(
                        backgroundColor: textColor ?? Colors.green,
                        radius: 8,
                        child: Icon(
                          Icons.check,
                          color: iconColor ?? Colors.white,
                          size: 10,
                        ))
                    : Icon(
                        iconUncheck ?? Icons.radio_button_unchecked,
                        size: 18,
                        color: iconUncheckedColor ?? Colors.white,
                      ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isChecked
                    ? CircleAvatar(
                        backgroundColor: textColor ?? Colors.green,
                        radius: 8,
                        child: Icon(
                          Icons.check,
                          color: iconColor ?? Colors.black,
                          size: 10,
                        ),
                      )
                    : DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorResources.whiteColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          iconUncheck ?? Icons.close,
                          size: 18,
                          color: iconUncheckedColor ?? Colors.white,
                        ),
                      ),
                const SizedBox(width: 8),
                Text(
                  "${text[0].toUpperCase()}${text.substring(1)}",
                  style: TextStyle(
                    color: textColor ?? Colors.black,
                    fontWeight:
                        textColor != null ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
    );
  }
}
