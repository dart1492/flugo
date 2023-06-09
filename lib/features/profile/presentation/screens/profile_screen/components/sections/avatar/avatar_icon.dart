import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/images/frame_names.dart';
import 'package:flugo_mobile/core/constants/images/image_names.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/avatar/change_avatar_dialog.dart';
import 'package:flutter/material.dart';

/// Avatar icon of the user + frame on top + change button
class AvatarIcon extends StatelessWidget {
  /// Avatar icon of the user + frame on top + change button
  const AvatarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
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
                      AvatarFrameNames.crownFrame,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              showDialog(
                context: context,
                builder: (context) => const ChangeAvatarDialog(),
              );
            },
            borderRadius: BorderRadius.circular(
              5,
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: AppColors.lightGreen,
                ),
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
              child: const Icon(
                Icons.create,
                color: AppColors.lightGreen,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
