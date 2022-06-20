import 'package:flutter/material.dart';

class ChoiceWidget extends StatelessWidget {
  final String text;
  final bool isChecked;
  final LinearGradient? linearGradient;
  final Color? textColor;
  final Color? iconColor;
  final bool showCheckAtTrailing;
  final void Function()? onSelected;

  const ChoiceWidget({
    Key? key,
    required this.text,
    this.isChecked = false,
    this.linearGradient,
    this.textColor,
    this.showCheckAtTrailing = false,
    this.iconColor,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
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
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.check,
                            color: iconColor ?? Colors.white,
                            size: 10,
                          ),
                          color: iconColor ?? Colors.white,
                          onPressed: onSelected ?? () {},
                        ),
                      )
                    : Icon(
                        Icons.radio_button_unchecked,
                        size: 18,
                        color: iconColor ?? Colors.black,
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
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.check,
                            color: iconColor ?? Colors.white,
                            size: 10,
                          ),
                          color: iconColor ?? Colors.white,
                          onPressed: () {},
                        ),
                      )
                    : Icon(
                        Icons.radio_button_unchecked,
                        size: 18,
                        color: iconColor ?? Colors.black,
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
