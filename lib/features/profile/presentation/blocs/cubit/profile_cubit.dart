import 'package:flugo_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repo;
  ProfileCubit(this.repo) : super(ProfileState());

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
