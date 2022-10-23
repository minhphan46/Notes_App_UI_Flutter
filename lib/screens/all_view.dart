import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/app_colors.dart';
import 'package:notes_app/models/list_tile_row.dart';
import 'package:notes_app/widgets/curved_box.dart';
import 'package:notes_app/widgets/date_footer.dart';

class AllView extends StatelessWidget {
  const AllView({super.key});

  @override
  Widget build(BuildContext context) {
    double wight = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.notesMedical,
          color: AppColors.white,
        ),
      ),
      body: AnimationLimiter(
        child: MasonryGridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          itemCount: 6,
          itemBuilder: (context, i) {
            return AnimationConfiguration.staggeredGrid(
              position: i,
              columnCount: 2,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: i == 0
                      ? CurvedBox(
                          children: [
                            Text(
                              "Reminder",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            ListTileRow(
                              isChecked: false,
                              text: "Exploration Design",
                            ),
                            ListTileRow(
                              isChecked: false,
                              text: "do homework",
                            ),
                            ListTileRow(
                              isChecked: true,
                              text: "do os homework",
                            ),
                            ListTileRow(
                              isChecked: true,
                              text: "code chess game c#",
                            ),
                            const SizedBox(height: 16),
                            DateFooter(date: "Otc 17", footerText: "ToDo"),
                          ],
                        )
                      : i == 1
                          ? CurvedBox(
                              children: [
                                Text(
                                  "Quote today",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                    "\"The best preparation for tomorrow is doing your best today\"\n- H. Jackson Jr. "),
                                const SizedBox(height: 16),
                                DateFooter(date: "Jan 21", footerText: "Quote"),
                              ],
                            )
                          : i == 2
                              ? CurvedBox(
                                  children: [
                                    Text(
                                      "2021 Hope",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                        "I have a dream that must come true !!"),
                                    ListTileRow(
                                      isChecked: true,
                                      text: "GPA above 3.6",
                                    ),
                                    ListTileRow(
                                      isChecked: true,
                                      text: "Have an macbook",
                                    ),
                                    ListTileRow(
                                      isChecked: false,
                                      text: "Holidays in Japan",
                                    ),
                                    const SizedBox(height: 16),
                                    DateFooter(
                                      date: "Otc 17",
                                      footerText: "My Targets",
                                    ),
                                  ],
                                )
                              : i == 3
                                  ? CurvedBox(
                                      padding: EdgeInsets.zero,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: wight,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Image.asset(
                                            "assets/travel.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                CupertinoIcons.location_solid,
                                                color: AppColors.lightGrey,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "DaNang Beach",
                                                style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          child: Text(
                                            "I stayed here for a big family vacation. This is a great affordable hotel to stay in Bali...",
                                            style: TextStyle(
                                              color: AppColors.lightGrey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          child: DateFooter(
                                            date: "Dec 24",
                                            footerText: "Daily Life",
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                    )
                                  : i == 4
                                      ? CurvedBox(
                                          children: [
                                            Text(
                                              "Note in class",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                                "Data science combines math and statistics, specialized programming, advanced analytics, artificial intelligence (AI), and machine learning with specific subject matter expertise to uncover ..."),
                                            const SizedBox(height: 16),
                                            DateFooter(
                                                date: "Jan 21",
                                                footerText: "Note"),
                                          ],
                                        )
                                      : i == 5
                                          ? CurvedBox(
                                              children: [
                                                Text(
                                                  "My Diary >,<",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                const SizedBox(height: 30),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons.lock_fill,
                                                      size: 55,
                                                      color:
                                                          AppColors.lightGrey,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 30),
                                                DateFooter(
                                                    date: "Jan 21",
                                                    footerText: "Secret"),
                                              ],
                                            )
                                          : const SizedBox.shrink(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
