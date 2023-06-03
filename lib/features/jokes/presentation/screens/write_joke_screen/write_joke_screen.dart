import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/inversions/custom_bot_toasts.dart';
import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/image_names.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/core/components/error_box.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_cubit.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_state.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/write_joke_screen/components/post_button.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()

/// Screen where user creates joke
class WriteJokeScreen extends StatefulWidget {
  /// Screen where user creates joke
  const WriteJokeScreen({super.key});

  @override
  State<WriteJokeScreen> createState() => _WriteJokeScreenState();
}

class _WriteJokeScreenState extends State<WriteJokeScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  void _listener(BuildContext context, WriteJokeState state) {
    if (state is FailedPostState) {
      // TODO: DEAL WITH TOASTS
      CustomBotToasts.showErrorToast(
        text: state.errorMessage,
      );
    }

    if (state is SuccessPostState) {
      _resetTextFields();
      CustomBotToasts.showErrorToast(
        text: state.successMessage,
      );
    }
  }

  void _resetTextFields() {
    titleController.clear();
    contentController.clear();
  }

  bool _buildErrorBoxWhen(WriteJokeState previous, WriteJokeState current) {
    if (previous is WriteJokeInitialState && current is WriteJokeInitialState) {
      if (previous.isContentValidated != current.isContentValidated ||
          previous.isTitleValidated != current.isTitleValidated) {
        return true;
      }
    }

    return false;
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WriteJokeCubit>(),
      child: BlocListener<WriteJokeCubit, WriteJokeState>(
        listener: (context, state) => _listener(context, state),
        child: Scaffold(
          backgroundColor: AppColors.darkBlue,
          body: SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ScrollConfiguration(
                    behavior: CustomBehavior(),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Time to write",
                                style: josefin.s32.w700
                                    .withColor(AppColors.highlightedViolet),
                              ),
                              const Expanded(
                                child: SizedBox(),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      ImageNames.laugh2GIF,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            child: Row(
                              children: [
                                Text(
                                  "Name your joke:",
                                  style: josefin.s20.withColor(
                                    AppColors.plainWhite,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                BlocBuilder<WriteJokeCubit, WriteJokeState>(
                                  buildWhen: (previous, current) =>
                                      _buildErrorBoxWhen(previous, current),
                                  builder: (context, state) {
                                    if (state is WriteJokeInitialState) {
                                      return ErrorBox(
                                        errorText: 'Invalid title',
                                        isShown: state.isTitleValidated,
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              var cubit = context.read<WriteJokeCubit>();
                              return CustomTextField(
                                controller: titleController,
                                maxLines: null,
                                onTap: () {
                                  cubit.resetFields();
                                },
                                onChanged: (p0) {
                                  cubit.updateTitle(p0);
                                },
                              );
                            },
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            child: Row(
                              children: [
                                Text(
                                  "And write it here:",
                                  style: josefin.s20.withColor(
                                    AppColors.plainWhite,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                BlocBuilder<WriteJokeCubit, WriteJokeState>(
                                  buildWhen: (previous, current) =>
                                      _buildErrorBoxWhen(previous, current),
                                  builder: (context, state) {
                                    if (state is WriteJokeInitialState) {
                                      return ErrorBox(
                                        errorText: 'Invalid content',
                                        isShown: state.isContentValidated,
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              var cubit = context.read<WriteJokeCubit>();
                              return CustomTextField(
                                controller: contentController,
                                onTap: () {
                                  cubit.resetFields();
                                },
                                onChanged: (p0) {
                                  cubit.updateContent(p0);
                                },
                                maxLines: null,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: BlocBuilder<WriteJokeCubit, WriteJokeState>(
                              builder: (context, state) {
                                if (state is PostingJoke) {
                                  return const SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return const PostButton();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
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
