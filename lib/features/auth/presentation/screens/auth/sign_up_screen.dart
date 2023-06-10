import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/alert_dialog.dart';
import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/components/custom_password_field.dart';
import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_up_cubit/sign_up_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_up_cubit/sign_up_state.dart';
import 'package:flugo_mobile/core/components/error_box.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/sign_in_navigation_text.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/subtitle_text.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/title_text.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Sign up page for creating a new user
@RoutePage()
class SignUpScreen extends StatelessWidget {
  /// Constructor
  const SignUpScreen({super.key});

  Future _showDialog(BuildContext context, String message) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return CustomAlertDialog(message: message);
      },
    );
  }

  void _signUpListener(BuildContext context, SignUpState state) {
    if (state.status is SubmissionSuccess) {
      context.read<AuthCubit>().saveToken(
            (state.status as SubmissionSuccess).bearerToken,
          );

      context.router.replace(const BottomNavBarRoute());
    }
    if (state.status is SubmissionFailed) {
      var status = state.status as SubmissionFailed;
      _showDialog(context, status.errorMessage);
      context.read<SignUpCubit>().resetFormStatus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpCubit>(),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: _signUpListener,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.darkBlue,
            body: ScrollConfiguration(
              behavior: CustomBehavior(),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 25,
                    ),
                    child: Column(
                      children: [
                        const TitleText(),
                        const SubtitleText(),
                        const SizedBox(
                          height: 30,
                        ),
                        BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) {
                            return ErrorBox(
                              errorText: "Invalid display name",
                              isShown: state.isDisplayNameValidated,
                            );
                          },
                        ),
                        Builder(
                          builder: (context) {
                            final bloc = context.read<SignUpCubit>();
                            return CustomTextField(
                              maxLines: 1,
                              onChanged: (p0) => bloc.updateUsername(p0),
                              onTap: () => bloc.resetFieldErrors(),
                              labelText: "Display name",
                              trailingIcon: const Icon(FeatherIcons.user),
                            );
                          },
                        ),
                        BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) {
                            return ErrorBox(
                              errorText: "Invalid email",
                              isShown: state.isEmailValidated,
                            );
                          },
                        ),
                        Builder(
                          builder: (context) {
                            final bloc = context.read<SignUpCubit>();
                            return CustomTextField(
                              maxLines: 1,
                              onChanged: (p0) => bloc.updateEmail(p0),
                              onTap: () => bloc.resetFieldErrors(),
                              labelText: "Email",
                              trailingIcon: const Icon(FeatherIcons.mail),
                            );
                          },
                        ),
                        BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) {
                            return ErrorBox(
                              errorText: "Invalid password",
                              isShown: state.isPasswordValidated,
                            );
                          },
                        ),
                        Builder(
                          builder: (context) {
                            final bloc = context.read<SignUpCubit>();
                            return CustomPasswordField(
                              maxLines: 1,
                              onTap: () => bloc.resetFieldErrors(),
                              onChanged: (p0) => bloc.updatePassword(p0),
                              labelText: "Password",
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SignInNavigationText(),
                        const SizedBox(
                          height: 30,
                        ),
                        Builder(
                          builder: (context) {
                            return CustomButton(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                              color: AppColors.highlightedViolet,
                              gradient: const LinearGradient(colors: [
                                Color(0xFF8E2DE2),
                                Color(0xFF4A00E0),
                              ]),
                              child: Text(
                                "Sign up",
                                style: josefin.s24.w700.withColor(
                                  AppColors.plainWhite,
                                ),
                              ),
                              onTap: () {
                                final cubit = context.read<SignUpCubit>();
                                final validation = cubit.validateFields();
                                if (validation) {
                                  cubit.signUp();
                                }
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
