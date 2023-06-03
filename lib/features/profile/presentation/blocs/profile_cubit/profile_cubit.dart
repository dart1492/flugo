import 'package:flugo_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/profile_cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit for profile loading info (and possibly changing)
class ProfileCubit extends Cubit<ProfileState> {
  /// Associated repository
  final ProfileRepository repo;

  /// Cubit for profile loading info (and possibly changing)
  ProfileCubit(this.repo) : super(ProfileState());

  /// Load profile info
  void loadProfile() async {
    emit(ProfileStateLoading());
    var result = await repo.getUser();
    result.fold(
      (l) => emit(
        ProfileStateFailedLoading(message: l.errorMessage),
      ),
      (r) => emit(
        ProfileStateLoaded(r),
      ),
    );
  }
}
