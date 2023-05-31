import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/global_jokes_cubit/global_jokes_cubit.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/global_jokes_cubit/global_jokes_state.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/global_jokes_screen/components/jokes_list_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Jokes list on the home page
class JokesList extends StatefulWidget {
  /// Jokes list on the home page
  const JokesList({
    Key? key,
  }) : super(key: key);

  @override
  State<JokesList> createState() => _JokesListState();
}

class _JokesListState extends State<JokesList> {
  //ignore: avoid-late-keyword

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: AppColors.highlightedViolet,
          child: BlocBuilder<GlobalJokesCubit, GlobalJokesState>(
            builder: (context, state) {
              if (state is LoadedGlobalJokesState) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.jokes.length,
                  itemBuilder: (context, index) {
                    return JokesListElement(
                      joke: state.jokes[index],
                    );
                  },
                );
              }

              if (state is ErrorGlobalJokesState) {
                // TODO: CREATE ERROR BOX WIDGET
                return Container();
              }
              return const Center(
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
