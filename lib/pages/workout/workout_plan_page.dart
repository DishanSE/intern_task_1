import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern_task_1/pages/workout/widgets/category_chip.dart';
import 'package:intern_task_1/pages/workout/widgets/workout_round_card.dart';
import 'package:intern_task_1/services/providers/workout_provider.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';
import 'package:intern_task_1/widgets/global/app_button.dart';
import 'package:provider/provider.dart';

class WorkoutPlanPage extends StatelessWidget {
  const WorkoutPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutProvider = context.watch<WorkoutProvider>();

    if (!workoutProvider.isWorkoutLoaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final workout = workoutProvider.workout;

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  workout.image,
                  height: 380,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.onSecondary,
                    ),
                    onPressed: () => context.go('/dashboard'),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    workout.title,
                    style: AppTextStyles.headline3.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: workout.categories
                    .map(
                      (cat) => CategoryChip(
                        label: cat,
                        isSelected: cat == workout.categories.first,
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 20),

            // Button
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: AppButton(
                text: 'Start Training',
                onPressed: () => context.go('/progress'),
              ),
            ),

            const SizedBox(height: 20),

            // workout rounds
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Title and Card List
                  Text(
                    'Round 01',
                    style: AppTextStyles.bodyText.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: workout.rounds
                        .map((r) => WorkoutRoundCard(round: r))
                        .toList(),
                  ),
                  const SizedBox(height: 24),

                  // Second Title and Card List (duplicate)
                  Text(
                    'Round 02',
                    style: AppTextStyles.bodyText.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: workout.rounds
                        .map((r) => WorkoutRoundCard(round: r))
                        .toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
