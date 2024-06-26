import 'package:flutter/material.dart';
import 'package:tasky/utils/app_colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primaryColor.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                offset: const Offset(0, 4),
                blurRadius: 2,
              )
            ]),
        child: ListTile(
          ///*Check Icon
          leading: GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: .8),
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),

          /// *Task title
          title: const Padding(
            padding: EdgeInsets.only(top: 3, bottom: 5),
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          /// *Task Subtitle
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              /// * Date of Task

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'SubDate',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
