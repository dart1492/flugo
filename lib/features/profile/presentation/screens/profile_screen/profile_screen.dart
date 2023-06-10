import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/profile_cubit/profile_cubit.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/profile_cubit/profile_state.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/avatar/avatar_icon.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/awards_section.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/bio/bio_section.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/personal/personal_section.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

@RoutePage()

/// Screen with user's profile info
class ProfileScreen extends StatelessWidget {
  /// Screen with user's profile info
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UnauthenticatedState) {
          context.router.popUntilRoot();
          context.router.replace(
            const SignInRoute(),
          );
        }
      },
      child: GestureDetector(
        onTap: () {
          // drop focus from the bio field
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: BlocProvider(
          create: (context) => sl<ProfileCubit>()..loadProfile(),
          child: Scaffold(
            backgroundColor: AppColors.darkBlue,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is ProfileStateLoaded) {
                      return ScrollConfiguration(
                        behavior: CustomBehavior(),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const AvatarIcon(),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.profile.username,
                                style: josefin.s24.withColor(
                                  AppColors.plainWhite,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  BioSection(
                                    bioText: state.profile.bio,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const AwardsSection(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const PersonalSection(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(
                        child: SpinKitWave(
                          color: AppColors.highlightedViolet,
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
