import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/frames_cubit/frames_state.dart';

class FramesCubit extends Cubit<FramesState> {
  final ProfileRepository repo;
  FramesCubit(this.repo) : super(FramesState());
}
