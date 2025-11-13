import 'package:flutter/material.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final IconData icon;
  final Color iconColor;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primary,
    this.textColor = AppColors.textPrimary,
    this.icon = Icons.play_arrow_rounded,
    this.iconColor = AppColors.onSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The main rounded button
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              child: Text(text, style: AppTextStyles.bodyText),
            ),
          ),

          // Connector line
          Container(width: 20, height: 6, color: color),

          // Circular play icon
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Container(
              margin: const EdgeInsets.all(
                10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppColors.primary, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
