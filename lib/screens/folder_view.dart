import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/widgets/curved_box.dart';
import '../models/app_colors.dart';

class FolderView extends StatelessWidget {
  const FolderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.notesMedical,
          color: AppColors.white,
        ),
      ),
      body: MasonryGridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        itemCount: 6,
        itemBuilder: (context, index) => CurvedBox(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Lottie.asset("assets/folder.json", repeat: false),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  index == 0
                      ? "ToDo"
                      : index == 1
                          ? "Note"
                          : index == 2
                              ? "Daily Life"
                              : index == 3
                                  ? "My Targets"
                                  : index == 4
                                      ? "Quotes"
                                      : index == 5
                                          ? "Secret"
                                          : "",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
