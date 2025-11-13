import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProgressSummaryPage extends StatelessWidget {
  const ProgressSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6C0B0B),
              Color(0xFF000000),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with back button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                      onPressed: () => context.go('/workout'),
                    ),
                    const Expanded(
                      child: Text(
                        'Daily Progress',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48), 
                  ],
                ),
              ),

              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 100,
                      child: Image.asset(
                        'assets/images/ps_img.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    // Stats overlay
                    Positioned(
                      left: 35,
                      top: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildStatItem('05:85', 'Time Spent'),
                          const SizedBox(height: 30),
                          _buildStatItem('05:85', 'Heart Rate'),
                          const SizedBox(height: 30),
                          _buildStatItem('850', 'Calories'),
                          const SizedBox(height: 30),
                          _buildStatItem('1200', 'steps'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom bar
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildBottomItem('assets/images/Time.png', '3hrs'),
                    _buildBottomItem('assets/images/location.png', '5km'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withAlpha((255 * 0.7).round()),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomItem(String imagePath, String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imagePath,
            width: 36,
            height: 36,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
