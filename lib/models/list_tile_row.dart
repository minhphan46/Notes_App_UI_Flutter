import 'package:flutter/material.dart';
import 'package:notes_app/models/app_colors.dart';

class ListTileRow extends StatelessWidget {
  ListTileRow({required this.isChecked, this.text});
  final bool isChecked;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 16,
          child: Checkbox(
            shape: const CircleBorder(
              side: BorderSide(
                width: 2,
                color: AppColors.white,
              ),
            ),
            value: isChecked,
            checkColor: AppColors.grey,
            activeColor: AppColors.white,
            onChanged: (bool? val) {},
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text!,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
        )
      ],
    );
  }
}
