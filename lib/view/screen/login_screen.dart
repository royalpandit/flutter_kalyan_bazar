import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kalyanbazar/res/widget/colors.dart';
import 'package:kalyanbazar/utils/routes/routes_names.dart';
import 'package:kalyanbazar/utils/utils.dart';
import 'package:kalyanbazar/view/screen/register_screen.dart';
import 'package:kalyanbazar/viewModel/auth_viewmodel.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({super.key});
  const LoginScreen({Key? key}) : super(key: key);

  static const String RouteName = "/login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onPressButton(context) async {
    if (email.text.isEmpty) {
      print("please enter Email");
    } else if (Password.text.isEmpty) {
      print("please enter password");
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('action', "true");

      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDashNEW()));
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen()));
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mpin()));
    }

    print(email.text);
    print(Password.text);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ListScreen(),
    //   ),
    // // );

    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => ListScreen()));
  }

  onPressButtonRegister(context) {
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
      Navigator.pushNamed(context, RouteNames.signupScreen);

    //Navigator.of(context) .push(MaterialPageRoute(builder: (context) => ListScreen()));
  }

  onPressButtonSlider(context) {
    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityRegister()));

    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDashboard()));
  }

  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  Widget build(BuildContext context) {
    final authviewmodel = Provider.of<AuthViewModel>(context);

    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
        backgroundColor: AppColors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login Screen"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: AppColors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage("assets/images/kbr.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: mobileController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: "Enter Mobile Number",
                      hintText: "Enter Mobile Number",
                      fillColor: AppColors.white,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: "Enter Password",
                      hintText: "Enter Password",
                      fillColor: AppColors.white,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    //  onPressed: () => onPressButton(context),
                    onPressed: () {
                      if (mobileController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'Mobile can\'t be empty', context);
                      } else if (passwordController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'Password Number can\'t be empty', context);
                      } else {
                        Map data = {
                          "phone_number": mobileController.text.toString(),
                         "email": "",
                          "password": passwordController.text.toString(),
                          "login_type": "phone_number",

                          //   "user_status": Null
                        };
                        authviewmodel.loginApi(data, context);
                        print("Api Hit");
                      }
                    },
                    child: Text("Login")),
              ),
              Padding(
                child: InkWell(
                  onTap: () {
                    //Navigator.pushNamed(context, RouteNames.signupScreen);

                    onPressButtonRegister(context);
                  },
                  child: Text("Register"),
                ),
                padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                //child: Text("Register"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () => onPressButtonRegister(context),
                    child: Text("Register")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () => onPressButtonSlider(context),
                    child: Text("Slider")),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
