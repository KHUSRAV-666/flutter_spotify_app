import 'package:dartz/dartz.dart';
import 'package:flutter_spotify_app/core/usecase/usecase.dart';
import 'package:flutter_spotify_app/data/models/auth/create_user_req.dart';
import 'package:flutter_spotify_app/domain/repository/auth/auth.dart';
import 'package:flutter_spotify_app/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
