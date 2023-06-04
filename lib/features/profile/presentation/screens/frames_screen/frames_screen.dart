import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/custom_highlighted_button.dart';
import 'package:flugo_mobile/core/components/rounded_appbar.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/images/frame_names.dart';
import 'package:flugo_mobile/core/constants/images/image_names.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/frames_screen/components/available_frames_grid.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Screen where all frames, obtained by the user are displayed
class FramesScreen extends StatelessWidget {
  // TODO: PASS AVATAR HERE
  // final List<int> avatar;

  // TODO: CUBIT WILL GET A LIST OF UNLOCKED FRAMES FROM THE SERVER

  /// Screen where all frames, obtained by the user are displayed
  const FramesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: MAYBE REPLACE WITH MAP - WHERE KEYS - COME FROM BACKEND AND VALUES ARE ASSET NAMES
    final List<String> availableFrameNames = [
      AvatarFrameNames.beardFrame,
      AvatarFrameNames.crownFrame,
      AvatarFrameNames.hornsFrame,
    ];

    return Scaffold(
      appBar: const RoundedAppBar(
        titleText: "Frames",
      ),
      backgroundColor: AppColors.darkBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: SizedBox(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                ImageNames.userStockIcon,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AvatarFrameNames.beardFrame,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AvailableFramesGrid(
                  availableFrameNames: availableFrameNames,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomHighlightedButton(
                  childAlignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Save",
                    style: josefin.s20.withColor(
                      AppColors.plainWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
