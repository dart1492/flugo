import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/search_textfield.dart/search_textfield_state.dart';

class SearchTextfieldCubit extends Cubit<SearchTextFieldState> {
  SearchTextfieldCubit()
      : super(
          SearchTextFieldState(
            text: '',
          ),
        );

  void updateText() {}
}
