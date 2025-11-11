import 'package:go_router/go_router.dart';
import 'package:intern_task_1/auth/splash_screen.dart';
import 'package:intern_task_1/pages/dashboard/dashboard_page.dart';
import 'package:intern_task_1/pages/progress/progress_summary_page.dart';
import 'package:intern_task_1/pages/workout/workout_plan_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/', 
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/dashboard', 
      builder: (context, state) => DashboardPage()
    ),    
    GoRoute(
      path: '/workout', 
      builder: (context, state) => WorkoutPlanPage()
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => ProgressSummaryPage(),
    ),
  ],
);
