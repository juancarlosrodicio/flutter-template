import 'package:fluttertemplate/domain/entities/entities.dart';
import 'package:fluttertemplate/presentation/providers/storage/local_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_country.g.dart';

@Riverpod(keepAlive: true)
class UserCountry extends _$UserCountry {
  @override
  FutureOr<User> build() async {

    return await loadUser();
  }

  FutureOr<User> loadUser() async {
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    return await ref.watch(localStorageRepositoryProvider).loadUser();
  }

  void addOrUpdateUserCountry(String country) async {

    state = await AsyncValue.guard(() async {
      // ignore: avoid_manual_providers_as_generated_provider_dependency
      final user = await ref.watch(localStorageRepositoryProvider).addOrUpdateUserCountry(country);

      return user;
    });
    
  }
}