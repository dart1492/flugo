import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/search_textfield.dart/search_textfield_state.dart';

/// Search textfield cubit
class SearchTextfieldCubit extends Cubit<SearchTextFieldState> {
  /// Search textfield cubit
  SearchTextfieldCubit()
      : super(
          SearchTextFieldState(
            text: '',
          ),
        );

  /// Update text inside of the state
  void updateText() {}
}
