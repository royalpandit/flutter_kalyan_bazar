import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kalyanbazar/models/user_model.dart';
import 'package:kalyanbazar/utils/routes/routes_names.dart';
import 'package:kalyanbazar/viewModel/user_view_model.dart';

class SplashService {
  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {
    getUserData().then((value) async {
      print("auth tokan=>>${value.token}");
      if (value.token == "null" || value.token.toString() == "") {
        print("goto-lgn-screen=>");
        await Future.delayed(Duration(seconds: 3));
      Navigator.pushNamed(context, RouteNames.login);
      // Navigator.pushNamed(context, RouteNames.home);
      } else {
        print("goto-hum-screen=>");
        await Future.delayed(Duration(seconds: 3));
        Navigator.pushNamed(context, RouteNames.home);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print("error-spllash-screen=>$error");
      }
    });
  }
/*   static void checkAuthentication(BuildContext context) async {
    final userViewModel = UserViewModel();

    final user = await userViewModel.getUser();

    if (user!.token.toString() == "null" || user.token.toString() == "") {
      print(">1");
      await Future.delayed(const Duration(seconds: 3));
              Navigator.pushNamed(context, RouteNames.login);

     } else {
          print(">2");
      await Future.delayed(const Duration(seconds: 3));
      Navigator.pushNamed(context, RouteNames.splashScreen);
        //    Navigator.pushNamed(context, RouteNames.home);

    }
  } */
}
