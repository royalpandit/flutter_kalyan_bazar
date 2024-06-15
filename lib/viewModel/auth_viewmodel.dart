import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:kalyanbazar/repositry/auth_repositry.dart';
import 'package:kalyanbazar/utils/routes/routes_names.dart';
import 'package:kalyanbazar/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _auth = AuthRepository();
  bool _loginLoading = false;
  bool _signupLoading = false;

  bool get loading => _loginLoading;
  bool get signupLoading => _signupLoading;

  setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signupLoading = value;
    notifyListeners();
  }

  Future<void> apigetOtp(dynamic data, BuildContext context) async {
    setLoginLoading(true);
    _auth.apiGetOtp(data).then((value) async {
      setLoginLoading(false);
      print("ResponseValue==>Login${value}");
      Utils.flushBarErrorMessage("Login Successfully".toString(), context);
      // Navigator.pushNamed(context, RouteNames.splashScreen);
      Navigator.of(context, rootNavigator: true).pushNamed("/login_screen");

      // Navigator.pushNamed(context, RouteNames.login);
      /* if (value['code'] == 200 &&
          value['message'] ==
              "OTP generated and sent to registered mobile no.") {
      Navigator.pushNamed(context, RouteNames.login);
       } else {

       } */
    }).onError((error, stackTrace) {
      setLoginLoading(false);
      if (kDebugMode) {
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _auth.LoginApi(data).then((value) async {
      setLoginLoading(false);
      print("ResponseValue==>Login${value}");
      Utils.flushBarErrorMessage("Login Successfully".toString(), context);
      // Navigator.pushNamed(context, RouteNames.splashScreen);
      //  Navigator.of(context, rootNavigator: true).pushNamed("/login_screen");

if (value['status']==true) {
        Navigator.of(context, rootNavigator: true).pushNamed(RouteNames.home);

}else{
          Utils.flushBarErrorMessage(value['message'], context);

}

 
    }).onError((error, stackTrace) {
      setLoginLoading(false);
      if (kDebugMode) {
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

  Future<void> apiRegister(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _auth.RegisterApi(data).then((value) async {
      setLoginLoading(false);
      print("ResponseValue==>Login${value}");
      Utils.flushBarErrorMessage("Login Successfully".toString(), context);
      Navigator.pushNamed(context, RouteNames.login);
     // Navigator.of(context, rootNavigator: true).pushNamed(RouteNames.login);
 
    }).onError((error, stackTrace) {
      setLoginLoading(false);
      if (kDebugMode) {
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

  Future<void> apilogin(dynamic data, BuildContext context) async {
    setLoginLoading(true);
    _auth.apiLogin(data).then((value) {
      setLoginLoading(false);

      //! Api hit krtay huay sharedPreferences safe bhi krne hain!

      // final userPreference = Provider.of<UserViewModel>(context, listen: false);
      //userPreference.saveUser(UserModel(token: value['token'].toString()));

      Utils.flushBarErrorMessage("Login Successfull", context);

      Navigator.pushNamed(context, RouteNames.home);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setLoginLoading(false);
    });
  }

  Future<void> apiSignUp(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _auth.signUp(data).then((value) {
      Utils.flushBarErrorMessage("Sign Up Successfull", context);

      Navigator.pushNamed(context, RouteNames.home);
      setSignUpLoading(false);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setSignUpLoading(false);
    });
  }
}
