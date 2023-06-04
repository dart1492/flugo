import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/images/image_names.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/global_jokes_cubit/global_jokes_cubit.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/joke_filters_cubit/joke_filters_cubit.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/global_jokes_screen/components/jokes_list.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/global_jokes_screen/components/search_textfield.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()

/// Screen with global jokes
class GlobalJokesScreen extends StatefulWidget {
  /// Screen with global jokes
  const GlobalJokesScreen({super.key});

  @override
  State<GlobalJokesScreen> createState() => _GlobalJokesScreenState();
}

class _GlobalJokesScreenState extends State<GlobalJokesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<JokeFiltersCubit>(),
      child: BlocProvider(
        // TODO: GET FILTERS FROM FILTERS CUBIT AND retrieve JOKES
        create: (context) => sl<GlobalJokesCubit>()
          ..getJokes(
            context.read<JokeFiltersCubit>().getFilters(),
            '',
          ),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            backgroundColor: AppColors.darkBlue,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "Have fun!",
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
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage(ImageNames.laughGIF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SearchTextfield(),
                    const Expanded(
                      child: JokesList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
