import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String habitName;

  const DetailScreen({super.key, required this.habitName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Habit Detail"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              habitName,
              style: const TextStyle(fontSize: 24),
            ),
        SizedBox(height: 10),
        Text("Streak: 5 days 🔥"),
        Text("Status: Completed"),
          ],
        ),
      )
    );
  }
}