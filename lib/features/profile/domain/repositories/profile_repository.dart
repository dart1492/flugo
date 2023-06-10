import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/profile/data/profile_datasource.dart';
import 'package:flugo_mobile/features/profile/domain/entities/profile.dart';

/// Repository for profile feature
class ProfileRepository {
  /// ASsociated datasource
  final ProfileDatasource datasource;

  /// Repository for profile feature
  ProfileRepository(this.datasource);

  /// Get user info
  FutureFailable<Profile> getUser() {
    return RepositoryRequestHandler<Profile>()(
      request: () => datasource.getProfileInfo(),
    );
  }

  /// Update user's bio on the server
  FutureFailable<void> updateBio(String newBio) {
    return RepositoryRequestHandler()(
      request: () => datasource.updateBio(newBio),
    );
  }
}
