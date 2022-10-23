import 'package:flutter/material.dart';
import 'package:notes_app/models/app_colors.dart';
import 'package:notes_app/screens/home_screen.dart';
import 'package:notes_app/widgets/note_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.5,
            child: const NoteWidget(),
          ),
          Text(
            "Daily Notes",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: Text(
              "Take notes, reminders, set targets, collect resources and secure privacy",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.white),
            ),
          ),
          SizedBox(height: height * 0.1),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: Text(
              "Get started",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(height: height * 0.15),
        ],
      ),
    );
  }
}
