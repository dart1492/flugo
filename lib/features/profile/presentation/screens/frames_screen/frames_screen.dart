import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/image_names.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

@RoutePage()
class FramesScreen extends StatelessWidget {
  // TODO: PASS AVATAR HERE
  // final List<int> avatar;

  // TODO: CUBIT WILL GET A LIST OF UNLOCKED FRAMES FROM THE SERVER

  const FramesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> availableFrameNames = [
      ImageNames.crownAvatarFrame,
      ImageNames.hornsAvatarFrame,
    ];

    return Scaffold(
      appBar: _customAppBar(context),
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
                              ImageNames.hornsAvatarFrame,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: CustomBehavior(),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  childAlignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF8E2DE2),
                      Color(0xFF4A00E0),
                    ],
                  ),
                  child: Text(
                    "Save",
                    style: josefin.s24.w700.withColor(
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

  AppBar _customAppBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          "Frames",
          style: josefin.s20.copyWith(
            color: AppColors.plainWhite,
          ),
        ),
      ),
      titleSpacing: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(60),
        ),
      ),
      backgroundColor: AppColors.lightBlue,
      leading: GestureDetector(
        onTap: () {
          context.router.pop();
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Icon(
            FeatherIcons.chevronLeft,
            color: AppColors.highlightedViolet,
          ),
        ),
      ),
    );
  }
}
