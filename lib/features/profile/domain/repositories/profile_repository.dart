import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/profile/data/profile_datasource.dart';
import 'package:flugo_mobile/features/profile/domain/entities/profile.dart';

class ProfileRepository {
  final ProfileDatasource datasource;

  ProfileRepository(this.datasource);

  FutureFailable<Profile> getUser() {
    return RepositoryRequestHandler<Profile>()(
      request: () => datasource.getProfileInfo(),
    );
  }
}
