import 'package:flutter/material.dart';
import 'package:tasky/extensions/space_exs.dart';
import 'package:tasky/utils/app_colors.dart';
import 'package:tasky/utils/app_str.dart';
import 'package:lottie/lottie.dart';
import 'package:tasky/views/home/widgets/task_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final List<int> testing = [1, 2];
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            height: 100,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Progress Indicator
                const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    value: 1 / 3,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation(
                      AppColors.primaryColor,
                    ),
                  ),
                ),
                25.w,

                /// Top Level Task info
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStr.mainTitle,
                      style: textTheme.displayLarge,
                    ),
                    3.h,
                    Text(
                      "1 of 3 tasks",
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// ************** Divider *********************
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Divider(
              thickness: 2,
              indent: 100,
            ),
          ),
          Expanded(
              child: testing.isNotEmpty
                  ? ListView.builder(
                      itemCount: testing.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Dismissible(
                            // * New Widget I learned
                            direction: DismissDirection.horizontal,
                            onDismissed: (_) {},
                            background: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                                8.w,
                                const Text(
                                  AppStr.deletedTask,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            key: Key(
                              index.toString(),
                            ),
                            child: const TaskWidget());
                      },
                    )
                  : Column(
                      children: [Lottie.asset('')],
                    )),
        ],
      ),
    );
  }
}
