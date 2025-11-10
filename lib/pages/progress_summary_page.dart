import 'package:flutter/material.dart';

class ProgressSummaryPage extends StatelessWidget {
  const ProgressSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Progress Summary')),
      body: Center(
        child: Text('Daily Pregress Summary'),
      ),
    );
  }
}
