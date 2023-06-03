import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/global_jokes_cubit/global_jokes_cubit.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/joke_filters_cubit/joke_filters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Joke search Textfield
class SearchTextfield extends StatefulWidget {
  /// Joke search Textfield

  const SearchTextfield({
    super.key,
  });

  @override
  State<SearchTextfield> createState() => _SearchTextfieldState();
}

class _SearchTextfieldState extends State<SearchTextfield> {
  // DEBOUNCE
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: CustomTextField(
        maxLines: 1,
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        labelText: "Search for a joke",
        leading: Container(
          padding: const EdgeInsets.only(bottom: 4),
          child: const Icon(
            FeatherIcons.search,
            size: 20,
          ),
        ),
        onChanged: (queryText) {
          context.read<GlobalJokesCubit>().getJokes(
                context.read<JokeFiltersCubit>().getFilters(),
                queryText,
              );
        },
      ),
    );
  }
}
