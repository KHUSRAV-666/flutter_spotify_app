import 'package:flutter_spotify_app/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_spotify_app/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_spotify_app/domain/repository/auth/auth.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
