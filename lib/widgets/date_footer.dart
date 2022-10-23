import 'package:flutter/material.dart';
import 'package:notes_app/models/app_colors.dart';

class DateFooter extends StatelessWidget {
  DateFooter({required this.date, required this.footerText});

  final String date, footerText;
  final TextStyle style = const TextStyle(color: AppColors.lightGrey);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: style,
        ),
        Text(
          footerText,
          style: style,
        ),
      ],
    );
  }
}
