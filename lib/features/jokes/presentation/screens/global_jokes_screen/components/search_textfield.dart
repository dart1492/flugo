import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
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
  late FocusNode fieldNode;
  bool isFocused = false;

  @override
  void initState() {
    fieldNode = FocusNode();
    fieldNode.addListener(() {
      setState(() {
        isFocused = fieldNode.hasFocus;
      });
    });
    super.initState();
  }

  // DEBOUNCE
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: CustomTextField(
        focusNode: fieldNode,
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
        trailingIcon: CustomPopupMenu(
          // TODO: FINISH WITH FILTERS POPUP MENU WHEN DATA IS READY
          barrierColor: Colors.transparent,
          pressType: PressType.singleClick,
          menuBuilder: () {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: const BoxDecoration(color: AppColors.lightBlue),
              child: Column(
                children: [
                  Text(
                    "Filters",
                    style: josefin.s16.withColor(
                      AppColors.highlightedViolet,
                    ),
                  ),
                ],
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // border: Border.all(
              //   color: isFocused
              //       ? AppColors.highlightedViolet
              //       : AppColors.darkerGrey,
              // ),
            ),
            child: const Icon(
              FeatherIcons.filter,
            ),
          ),
        ),
      ),
    );
  }
}

// 