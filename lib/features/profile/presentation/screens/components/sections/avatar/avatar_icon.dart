import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/image_names.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/avatar/change_avatar_dialog.dart';

import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  const AvatarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 13),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  // TODO: REPLACE WITH AVATAR
                  ImageNames.userStockIcon,
                ),
              ),
            ),
          ),
        ),
        Image.asset(
          ImageNames.hornsAvatarFrame,
          height: 125,
          width: 125,
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => const ChangeAvatarDialog(),
            );
          },
          customBorder: const CircleBorder(),
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(133, 158, 158, 158),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.create,
              color: AppColors.plainWhite,
            ),
          ),
        ),
      ],
    );
  }
}
