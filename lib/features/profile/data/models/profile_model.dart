// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/profile/domain/entities/profile.dart';

class ProfileModel extends Profile {
  ProfileModel({
    required super.username,
    required super.bio,
    required super.email,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      username: map['username'] as String,
      bio: map['bio'] as String,
      email: map['email'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'bio': bio,
      'email': email,
    };
  }
}
