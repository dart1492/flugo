import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/frames_cubit/frames_state.dart';

/// Cubit to load frames, acquired by the user
class FramesCubit extends Cubit<FramesState> {
  /// Associated repository
  final ProfileRepository repo;

  /// Cubit to load frames, acquired by the user
  FramesCubit(this.repo) : super(FramesState());
}
