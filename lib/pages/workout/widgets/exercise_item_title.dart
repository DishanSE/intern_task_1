import 'package:flutter/material.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

class ExerciseItemTitle extends StatelessWidget {
  final String image;
  final String title;
  final String reps;

  const ExerciseItemTitle({
    super.key,
    required this.image,
    required this.title,
    required this.reps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image, width: 60, height: 60, fit: BoxFit.cover),
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.bodyText.copyWith(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                reps,
                style: AppTextStyles.caption.copyWith(color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 18,
          child: const Icon(Icons.play_arrow, color: AppColors.onSecondary,),
        ),
      ],
    );
  }
}
