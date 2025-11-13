import 'package:flutter/material.dart';
import 'package:intern_task_1/pages/workout/widgets/exercise_item_title.dart';
import 'package:intern_task_1/services/models/workout_model.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

class WorkoutRoundCard extends StatelessWidget {
  final WorkoutRound round;
  const WorkoutRoundCard({super.key, required this.round});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.onSecondary,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(round.title, style: AppTextStyles.bodyText),
          const SizedBox(height: 14),
          ...round.excercise.map(
            (ex) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ExerciseItemTitle(
                image: ex.image,
                title: ex.name,
                reps: ex.reps,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
