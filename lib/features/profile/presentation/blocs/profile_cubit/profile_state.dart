// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/profile/domain/entities/profile.dart';

class ProfileState {}

class ProfileStateLoaded extends ProfileState {
  Profile profile;
  ProfileStateLoaded(
    this.profile,
  );
}

class ProfileStateLoading extends ProfileState {}

class ProfileStateFailedLoading extends ProfileState {
  String message;
  ProfileStateFailedLoading({
    required this.message,
  });
}
