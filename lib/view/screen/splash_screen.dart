import 'package:flutter/material.dart';
 import 'package:kalyanbazar/res/widget/colors.dart';
import 'package:kalyanbazar/res/widget/images_path.dart';
 import 'package:kalyanbazar/viewModel/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
   @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    SplashService splashServices = SplashService();

  @override
  void initState() {
    super.initState();
   splashServices.checkAuthentication(context);
   }

  @override
  Widget build(BuildContext context) {
    var heig = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          top: false,
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: heig * .29,
                      width: double.infinity,
                      child: Image.asset(
                        ImagesPath.splash_top,
                        color: AppColors.red,
                      ),
                    ),
                    Container(
                      height: heig * .4,
                      child: Image.asset(ImagesPath.logo_rect),
                    ),
                    Container(
                      height: heig * .19,
                      width: double.maxFinite,
                      child: Image.asset(
                        ImagesPath.splash_bottom,
                        color: AppColors.red,
                      ),
                    ),
                  ],
                ),
              ),
              //  )
              /*  Center(
            child: Text(
              "Splash Screen",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold),
            ),
          ) */
            ],
          )),
    );
  }
}
