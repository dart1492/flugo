import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/image_names.dart';
import 'package:flugo_mobile/core/constants/widget_constants.dart';
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
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                WidgetConstants.iconContainerBorderRadius,
              ),
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(133, 158, 158, 158),
                borderRadius: BorderRadius.circular(
                  WidgetConstants.iconContainerBorderRadius,
                ),
              ),
              child: const Icon(
                Icons.create,
                color: AppColors.plainWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}