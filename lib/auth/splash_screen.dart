import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern_task_1/utils/text_styles.dart';
import 'package:intern_task_1/widgets/global/app_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/splash_bg.jpg', fit: BoxFit.cover,),
          Container(
            color: Colors.black.withAlpha((255 * 0.4).round()),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Join the Fitness \nClub",
                  style: AppTextStyles.headline1
                ),
                const SizedBox(height: 20,),
                AppButton(
                  text: 'Start Training',
                  onPressed: () => context.go('/dashboard'),
                ),
                SizedBox(height: 40,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
