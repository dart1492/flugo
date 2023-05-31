// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/alert_dialog.dart';
import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_in_cubit/sign_in_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_in_cubit/sign_in_state.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/error_box.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flugo_mobile/core/components/custom_password_field.dart';
import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/sign_up_navigation_text.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/subtitle_text.dart';
import 'package:flugo_mobile/features/auth/presentation/screens/auth/components/title_text.dart';

/// Sign in page
@RoutePage()
class SignInScreen extends StatelessWidget {
  /// Constructor
  const SignInScreen({super.key});

  Future _showDialog(BuildContext context, String message) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return CustomAlertDialog(message: message);
      },
    );
  }

  bool _buildErrorBoxWhen(SignInState previous, SignInState current) {
    if (previous.email != current.email ||
        previous.password != current.password) {
      return false;
    } else {
      return true;
    }
  }

  void _signInListener(BuildContext context, SignInState state) {
    if (state.status is SubmissionSuccess) {
      context.read<AuthCubit>().saveToken(
            (state.status as SubmissionSuccess).bearerToken,
          );
    }
    if (state.status is SubmissionFailed) {
      var status = state.status as SubmissionFailed;
      _showDialog(context, status.errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthenticatedState) {
          context.router.replace(
            const BottomNavBarRoute(),
          );
        }
      },
      child: BlocProvider(
        create: (context) => sl<SignInCubit>(),
        child: BlocListener<SignInCubit, SignInState>(
          listener: _signInListener,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.darkBlue,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 45,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const TitleText(),
                      const SubtitleText(),
                      const SizedBox(
                        height: 30,
                      ),

                      BlocBuilder<SignInCubit, SignInState>(
                        buildWhen: _buildErrorBoxWhen,
                        builder: (context, state) {
                          return ErrorBox(
                            errorText: "Invalid email",
                            isShown: state.isEmailValidated,
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          final bloc = BlocProvider.of<SignInCubit>(context);
                          return CustomTextField(
                            maxLines: 1,
                            labelText: "Email",
                            trailingIcon: const Icon(FeatherIcons.mail),
                            onTap: () => bloc.resetFields(),
                            onChanged: (p0) => bloc.updateEmail(p0),
                          );
                        },
                      ),
                      BlocBuilder<SignInCubit, SignInState>(
                        buildWhen: _buildErrorBoxWhen,
                        builder: (context, state) {
                          return ErrorBox(
                            errorText: "Invalid password",
                            isShown: state.isPasswordValidated,
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          final bloc = BlocProvider.of<SignInCubit>(context);
                          return CustomPasswordField(
                            maxLines: 1,
                            labelText: "Password",
                            onTap: () => bloc.resetFields(),
                            onChanged: (p0) => bloc.updatePassword(p0),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const SignUpNavigationText(),
                      const SizedBox(
                        height: 30,
                      ),
                      Builder(
                        builder: (context) {
                          return CustomButton(
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
                              "Sign in",
                              style: josefin.s24.w700.withColor(
                                AppColors.plainWhite,
                              ),
                            ),
                            onTap: () {
                              var cubit = context.read<SignInCubit>();
                              bool validationRes = cubit.validateFields();

                              if (validationRes) {
                                cubit.signIn();
                              }
                            },
                          );
                        },
                      ),
                      //const SignInButton(),
                    ],
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
