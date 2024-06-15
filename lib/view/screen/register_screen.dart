import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kalyanbazar/res/widget/colors.dart';
import 'package:kalyanbazar/utils/utils.dart';
import 'package:kalyanbazar/viewModel/auth_viewmodel.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  //const RegisterScreen({super.key});
  const RegisterScreen({Key? key}) : super(key: key);

  //static const String RouteName = "/sign_up_screen";

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  ValueNotifier obsecurePassword = ValueNotifier(true);

  // AuthViewModel authViewModel = AuthViewModel();

  onPressButton(context) async {
    if (emailController.text.isEmpty) {
      print("please enter Email");
    } else if (passwordController.text.isEmpty) {
      print("please enter password");
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('action', "true");

      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDashNEW()));
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen()));
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mpin()));
    }

    print(emailController.text);
    print(passwordController.text);
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
    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityRegister()));

    //Navigator.of(context) .push(MaterialPageRoute(builder: (context) => ListScreen()));
    /* Map data = {"mobile_no": mobile.text.toString()};
    auth.apigetOtp(data, context);
 */
    //print("NOrmal:$data");
    // authviewmodel.apigetOtp(data, context);
    debugPrint("hintAPi");
  }

  onPressButtonSlider(context) {
    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityRegister()));

    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDashboard()));
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController userPinController = TextEditingController();
  FocusNode MobileFocusNode = FocusNode();

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
                  controller: userNameController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: "Enter User name ",
                      hintText: "Enter User name",
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
                  controller: mobileController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: "Enter Mobile No. ",
                      hintText: "Enter Mobile No.",
                      fillColor: AppColors.white,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: userPinController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: "Enter 4 Digit MPIN ",
                      hintText: "Enter 4 Digit MPIN",
                      fillColor: AppColors.white,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child:
                    ElevatedButton(onPressed: () => {}, child: Text("Login")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (userNameController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'UserName can\'t be empty', context);
                      } else if (mobileController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'Mobile Number can\'t be empty', context);
                      } else if (passwordController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'Password can\'t be empty', context);
                      } else if (userPinController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            'Mpin Not Less 4 Digit ', context);
                      } else {
                        Map data = {
                          "phone_number": mobileController.text.toString(),
                          "email": "",
                          "password": passwordController.text.toString(),
                          "first_name": userNameController.text.toString(),
                          "last_name": "",
                          "user_pin": userPinController.text.toString(),
                       //   "user_status": Null
                        };
                        authviewmodel.apiRegister(data, context);
                        print("Api Hit");
                      }
                    },
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
