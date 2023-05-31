// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flugo_mobile/core/constants/local_storage_keys.dart';
import 'package:flugo_mobile/features/jokes/data/models/joke_filters_model.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class JokeFiltersDatasource {
  JokeFilters getFilters();
  Future<void> setFilters(JokeFilters filters);
}

class SPJokeFiltersDatasourceImpl extends JokeFiltersDatasource {
  final SharedPreferences sp;
  SPJokeFiltersDatasourceImpl({
    required this.sp,
  });

  @override
  JokeFilters getFilters() {
    final result = sp.getString(
      LocalStorageKeys.filters,
    );
    if (result != null) {
      return JokeFiltersModel.fromJson(result);
    }

    return JokeFiltersModel.initial();
  }

  @override
  Future<void> setFilters(JokeFilters filters) async {
    await sp.setString(
      LocalStorageKeys.filters,
      filters.toJson(),
    );
  }
}
