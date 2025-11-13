import 'package:flutter/material.dart';
import 'package:intern_task_1/pages/dashboard/widgets/featured_workout_card.dart';
import 'package:intern_task_1/pages/dashboard/widgets/recommended_workout_card.dart';
import 'package:intern_task_1/pages/dashboard/widgets/trainer_card.dart';
import 'package:intern_task_1/services/providers/user_provider.dart';
import 'package:intern_task_1/services/providers/workout_provider.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>();
    final workouts = context.watch<WorkoutProvider>();

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              Text('Hello ${user.userName},', style: AppTextStyles.headline1),
              const SizedBox(height: 4),
              Text("Let's start exercising", style: AppTextStyles.headline2),
              const SizedBox(height: 24),

              // Featured Workouts
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: workouts.featuredWorkouts
                      .map(
                        (workout) => Padding(
                          padding: const EdgeInsets.only(right: 0.3),
                          child: SizedBox(
                            width: 180, // give fixed width so it doesn’t shrink
                            child: FeaturedWorkoutCard(workout: workout),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),

              const SizedBox(height: 36),

              // Recommended Section
              Text(
                'Recommended For You',
                style: AppTextStyles.headline2.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: workouts.recommendedWorkouts
                      .map(
                        (workout) => RecommendedWorkoutCard(workout: workout),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 36),

              // Trainers Section
              Column(
                children: workouts.trainers
                    .map((trainer) => TrainerCard(trainer: trainer))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
