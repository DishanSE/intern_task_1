import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutPlanPage extends StatelessWidget {
  const WorkoutPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout Plan')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/progress'),
          child: Text('Go to Progress Summary'),
        ),
      ),
    );
  }
}
