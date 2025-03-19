import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gedeed/Features/Home/Logic/cubit/login_state.dart';
import 'package:gedeed/Features/Login/Data/data/repos/login_repo.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
}
