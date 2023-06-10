// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element
import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/profile/data/models/profile_model.dart';
import 'package:flugo_mobile/features/profile/domain/entities/profile.dart';

/// Datasource, related to profile information
abstract class ProfileDatasource {
  Future<Profile> getProfileInfo();

  Future<void> updateBio(String newBio);

  //TODO: ADD METHODS FOR PROFILE UPDATING
}

class ProfileDatasourceImpl extends ProfileDatasource {
  Dio dio;
  ProfileDatasourceImpl({
    required this.dio,
  });

  @override
  Future<Profile> getProfileInfo() async {
    final result = await dio.get("/me");
    return ProfileModel.fromMap(result.data);
  }

  @override
  Future<void> updateBio(String newBio) async {
    await dio.put("/me/bio", data: {"bio": newBio});
  }
}
