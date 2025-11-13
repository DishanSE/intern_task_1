import 'package:flutter/material.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CategoryChip({super.key, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.btnColor.withAlpha((255 * 0.2).round())
            : AppColors.btnColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        label,
        style: AppTextStyles.bodyText.copyWith(color: AppColors.textPrimary),
      ),
    );
  }
}
