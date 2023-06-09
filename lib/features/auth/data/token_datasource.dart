// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/core/constants/local_storage_keys.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Interacts with shared prefs directly to store and get accessToken
abstract class TokenDatasource {
  /// Get token
  Future<String?> getToken();

  /// Set token
  Future<void> setToken(String token);
}

class TokenDatasourceImpl extends TokenDatasource {
  final SharedPreferences sp;
  TokenDatasourceImpl({
    required this.sp,
  });

  @override
  Future<String?> getToken() async {
    final result = sp.getString(LocalStorageKeys.accessToken);
    sl<Logger>().i(result);
    return result;
  }

  @override
  Future<void> setToken(String token) async {
    await sp.setString(LocalStorageKeys.accessToken, token);
  }
}
