import 'package:dio/dio.dart';
import 'package:doctors_app/core/di/dependancy_injection.dart';
import 'package:doctors_app/core/networking/api_constants.dart';
import 'package:doctors_app/core/routing/app_router.dart';
import 'package:doctors_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  setupGetit();
  runApp( DocApp(appRouter: AppRouter(),));

  // Dio dio = Dio();
  // dio.options.headers = {
  //   'Accept': "application/json",
  // };

  // final res = await dio.post(ApiConstants.apiBaseUrl + ApiConstants.login, data: {
  //   "email": "jiji@gmail.com",
  //   'password': "Password123!",
  // });
  // print(res);
}
