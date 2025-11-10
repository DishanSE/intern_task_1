import 'package:flutter/material.dart';
import 'package:intern_task_1/routes/app_router.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'package:intern_task_1/utils/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Intern Task 01',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.secondary,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.onSecondary,
        ),
        textTheme: const TextTheme(
          headlineLarge: AppTextStyles.headline1,
          headlineMedium: AppTextStyles.headline2,
          bodyLarge: AppTextStyles.headline3,
          bodyMedium: AppTextStyles.bodyText,
          bodySmall: AppTextStyles.caption,
        ),
      ),
      routerConfig: appRouter,
    );
  }
}