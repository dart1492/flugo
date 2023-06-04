import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';

/// Grid of available to user frames
class AvailableFramesGrid extends StatelessWidget {
  /// Grid of available to user frames
  const AvailableFramesGrid({
    super.key,
    required this.availableFrameNames,
  });

  /// Passed list
  final List<String> availableFrameNames;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: availableFrameNames.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColors.darkerGrey,
                ),
              ),
              child: Image.asset(
                availableFrameNames[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
