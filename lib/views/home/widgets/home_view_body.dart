import 'package:flutter/material.dart';
import 'package:tasky/extensions/space_exs.dart';
import 'package:tasky/utils/app_colors.dart';
import 'package:tasky/utils/app_str.dart';
import 'package:lottie/lottie.dart';
import 'package:tasky/utils/constants.dart';
import 'package:tasky/views/home/widgets/task_widget.dart';
import 'package:animate_do/animate_do.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final List<int> testing = [];

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
                25.w, // Replace with appropriate width spacing

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStr.mainTitle,
                      style: textTheme.displayLarge,
                    ),
                    const SizedBox(
                        height: 3.0), // Replace with appropriate height spacing
                    Text(
                      "1 of 3 tasks", // Replace with dynamic text if needed
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
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
                        direction: DismissDirection.horizontal,
                        onDismissed: (_) {},
                        background: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.delete,
                              color: Colors.grey,
                            ),
                            SizedBox(
                                width:
                                    8.0), // Replace with appropriate width spacing
                            Text(
                              AppStr.deletedTask,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        key: Key(index.toString()),
                        child: const TaskWidget(),
                      );
                    },
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInUp(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Lottie.asset(
                            lottieURL, // Replace with your Lottie animation file path
                            animate: testing.isNotEmpty ? false : true,
                          ),
                        ),
                      ),
                      FadeInUp(
                        from: 30,
                        child: const Text(
                          AppStr.doneAllTask,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
