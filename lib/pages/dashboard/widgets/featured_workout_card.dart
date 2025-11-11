import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern_task_1/services/models/workout_model.dart';
import 'package:intern_task_1/utils/colors.dart';

class FeaturedWorkoutCard extends StatelessWidget {
  final WorkoutModel workout;
  const FeaturedWorkoutCard({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(workout.image, fit: BoxFit.cover),
          Container(
            color: Colors.black.withAlpha((255 * 0.4).round()),
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: () => context.go('/workout'), 
                child: Text(workout.buttonText, selectionColor: AppColors.textPrimary)),
            ),
          ),
        ],
      ),
    );
  }
}
