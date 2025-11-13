import 'package:flutter/material.dart';
import 'package:intern_task_1/services/models/trainer_model.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

class TrainerCard extends StatelessWidget {
  final TrainerModel trainer;
  const TrainerCard({super.key, required this.trainer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              trainer.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
            Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(trainer.title, style: AppTextStyles.headline2),
                  const SizedBox(height: 4),
                  Text(
                    trainer.subtitle,
                    style: AppTextStyles.bodyText.copyWith(
                      color: AppColors.textPrimary.withAlpha(
                        (255 * 0.8).round(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
