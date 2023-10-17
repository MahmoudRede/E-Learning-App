import 'package:e_learning_app/data/local/shared_preference.dart';
import 'package:e_learning_app/helper/material_navigation.dart';
import 'package:e_learning_app/presentation/screens/home_screen/home_screen.dart';
import 'package:e_learning_app/presentation/screens/onBoarding_screen/onBoarding_screen.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/asset_manager.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    UserDataFromStorage.getData();
    FlutterNativeSplash.remove();

    Future.delayed(const Duration(seconds: 3),(){
      // if(UserDataFromStorage.setOnBoardingOpened == true){
      //   customPushReplacement(context, const LoginScreen());
      // }
      // if(UserDataFromStorage.onBoardingIsOpen == false){
      //   customPushReplacement(context, const OnBoardingScreen());
      // }
      customPushReplacement(context, const OnBoardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: SizeConfig.height*.3,
          ),

          /// title
          Text('E-Learning',style: TextStyle(
            fontSize: FontSize.headline1Size,
            fontWeight: FontWeight.bold,
            color: AppColor.white
          ),),

          const Spacer(),

          /// image
           Image(
            height: SizeConfig.height*0.4,
            width: SizeConfig.width,
            image: const AssetImage(AssetManager.splashScreenImage),
          ),

        ],
      ),
    );
  }
}

