import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'frame_choose_cubit_state.dart';

class FrameChooseCubitCubit extends Cubit<FrameChooseCubitState> {
  FrameChooseCubitCubit() : super(FrameChooseCubitInitial());
}
