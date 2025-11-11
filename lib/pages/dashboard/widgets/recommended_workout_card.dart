import 'package:flutter/material.dart';
import 'package:intern_task_1/services/models/workout_model.dart';

class RecommendedWorkoutCard extends StatelessWidget {
  final WorkoutModel workout;
  const RecommendedWorkoutCard({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          workout.image,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}