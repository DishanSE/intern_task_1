import 'package:flutter/material.dart';
import 'package:intern_task_1/services/models/trainer_model.dart';
import 'package:intern_task_1/services/models/workout_model.dart';

class WorkoutProvider extends ChangeNotifier {
  // Dashboard data
  final List<WorkoutModel> _featuredWorkouts = [
    WorkoutModel(
      id: 'w1',
      title: 'Full Body Workout',
      image: 'assets/images/db_img_1.png',
      buttonText: 'Start',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
    WorkoutModel(
      id: 'w2',
      title: 'GYM',
      image: 'assets/images/db_img_2.png',
      buttonText: 'Start',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
    WorkoutModel(
      id: 'w1',
      title: 'Full Body Workout',
      image: 'assets/images/wp_img_1.png',
      buttonText: 'Start',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
  ];

  final List<WorkoutModel> _recommendedWorkouts = [
    WorkoutModel(
      id: 'rw1',
      title: 'Stretching',
      image: 'assets/images/db_img_3.png',
      buttonText: 'View',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
    WorkoutModel(
      id: 'rw2',
      title: 'Cardio',
      image: 'assets/images/db_img_4.png',
      buttonText: 'View',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
    WorkoutModel(
      id: 'rw3',
      title: 'Maditation',
      image: 'assets/images/db_img_5.png',
      buttonText: 'View',
      categories: ['Cardio', 'Boxing', 'Zumba', 'Hiking',],
      rounds: [
        WorkoutRound(
          title: 'Full body exercise',
          excercise: [
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
            Excercise(
              name: 'Side Stretch Left',
              image: 'assets/images/wp_img_2.png',
              reps: '3x',
            ),
          ],
        ),
      ],
    ),
  ];

  final List<TrainerModel> _trainers = [
    TrainerModel(
      id: 't1',
      title: 'Find me a personal trainer',
      subtitle: 'Explore now',
      image: 'assets/images/db_img_6.png',
    ),
    TrainerModel(
      id: 't1',
      title: 'Find me a group classes',
      subtitle: 'Explore now',
      image: 'assets/images/db_img_7.png',
    ),
    TrainerModel(
      id: 't1',
      title: 'Find me a personal trainer',
      subtitle: 'Explore now',
      image: 'assets/images/db_img_6.png',
    ),
  ];

  List<WorkoutModel> get featuredWorkouts => _featuredWorkouts;
  List<WorkoutModel> get recommendedWorkouts => _recommendedWorkouts;
  List<TrainerModel> get trainers => _trainers;

  late WorkoutModel _workout;
  bool _isWorkoutLoaded = false;

  WorkoutModel get workout => _workout;
  bool get isWorkoutLoaded => _isWorkoutLoaded;

  void loadWorkout(WorkoutModel workout) {
    _workout = workout;
    _isWorkoutLoaded = true;
    notifyListeners();
  }
}
