import 'package:doctors_app/core/networking/api_error_handler.dart';
import 'package:doctors_app/core/networking/api_result.dart' as ApiResult;
import 'package:doctors_app/features/login/data/models/login_request_body.dart';
import 'package:doctors_app/features/login/data/models/login_response.dart';
import 'package:doctors_app/features/login/data/repos/login_repo.dart';
import 'package:doctors_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async { 
    print("Now we emiting loading state....");
    emit(const LoginState.loading());

    final response = await loginRepo.login(loginRequestBody);
  if(response is ApiResult.Success) { 
    emit(LoginState.success(response));
  }
  else if(response is ApiResult.Failure) { 
    final res = response as ApiResult.Failure;
    emit(LoginState.error(error: res.errorHandler.apiErrorModel.message));
  }

  }  
}
