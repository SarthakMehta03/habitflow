import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> habits = [
      "Exercise",
      "Meditation",
      "Read Book",
      "Drink Water"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("HabitFlow"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueGrey,
        elevation: 0,

        // MENU ICON (will be used later)
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),

      backgroundColor: Colors.grey[100],

      body: Column(
        children: [

          const SizedBox(height: 10),

          // 🔷 LOGO (IMPORTANT FOR TASK)
          const Icon(
            Icons.track_changes,
            size: 60,
            color: Colors.blueGrey,
          ),

          const SizedBox(height: 10),

          const Text(
            "Your Habits",
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 20),

          // 🔷 HABIT LIST
          Expanded(
            child: ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 8),
                  child: ListTile(
                    title: Text(habits[index]),

                    trailing: const Icon(Icons.arrow_forward),

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            habitName: habits[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}