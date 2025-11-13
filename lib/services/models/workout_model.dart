
class Excercise {
  final String name;
  final String image;
  final String reps;

  Excercise({
    required this.name,
    required this.image,
    required this.reps
  });
}

class WorkoutRound {
  final String title;
  final List<Excercise> excercise;

  WorkoutRound({
    required this.title,
    required this.excercise,
  });
}

class WorkoutModel {
  final String id;
  final String title;
  final String image;
  final List<String> categories;
  final List<WorkoutRound> rounds;
  final String buttonText;

  WorkoutModel({
    required this.id,
    required this.title,
    required this.image,
    required this.categories,
    required this.rounds,
    required this.buttonText,
  });
}
