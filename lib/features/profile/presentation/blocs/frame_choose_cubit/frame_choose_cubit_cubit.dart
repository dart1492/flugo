import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'frame_choose_cubit_state.dart';

/// Cubit is responsible for choosing new frame for user and storing this information to the server
class FrameChooseCubitCubit extends Cubit<FrameChooseCubitState> {
  /// Cubit is responsible for choosing new frame for user and storing this information to the server
  FrameChooseCubitCubit() : super(FrameChooseCubitInitial());
}
