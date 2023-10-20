import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_cubit.dart';
import 'package:e_learning_app/business_logic/theme_cubit/theme_cubit.dart';
import 'package:e_learning_app/data/local/shared_preference.dart';
import 'package:e_learning_app/data/remote/dio_helper.dart';
import 'package:e_learning_app/firebase_options.dart';
import 'package:e_learning_app/presentation/screens/Login_screen/login_screen.dart';
import 'package:e_learning_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:e_learning_app/business_logic/localization_cubit/localization_cubit.dart';
import 'package:e_learning_app/business_logic/localization_cubit/localization_states.dart';
import 'package:sizer/sizer.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await SharedPreferences.getInstance();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  await DioHelper.init();
  await UserDataFromStorage.getData();

  final languageCode = UserDataFromStorage.languageCodeFromStorage;
  debugPrint('language code is : $languageCode');
  // debugPrint("Size : ${SizeConfig.height * 0.0221}");

  runApp(const ELearningApp());
}

class ELearningApp extends StatefulWidget {

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const ELearningApp({super.key});

  @override
  State<ELearningApp> createState() => _ELearningAppState();
}

class _ELearningAppState extends State<ELearningApp>  with WidgetsBindingObserver{


  void myCallback(Function callback){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  @override
  void initState(){
    WidgetsBinding.instance.addObserver(this);
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (BuildContext context)=> GlobalCubit(),
        ),

        BlocProvider(
          create: (BuildContext context) => LocalizationCubit()..fetchLocalization(),
        ),

        BlocProvider(
          create: (BuildContext context) => ThemeCubit(),
        ),

        // BlocProvider(
        //   create: (BuildContext context) => AuthCubit(),
        // ),

      ],
      child: BlocConsumer<LocalizationCubit, LocalizationStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LayoutBuilder(builder: (context, constraints) {
                return OverlaySupport(
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'E-Learning',
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      DefaultCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: const [
                      Locale("en",""),
                      Locale("ar",""),
                    ],
                    locale: LocalizationCubit.get(context).appLocal,
                    localeResolutionCallback: (currentLang , supportLang){
                      if(currentLang != null) {
                        for(Locale locale in supportLang){
                          if(locale.languageCode == currentLang.languageCode){
                            return currentLang;
                          }
                        }
                      }
                      return supportLang.first;
                    },
                    // onGenerateRoute: RoutesGenerator.getRoutes,
                    // initialRoute: RoutesManager.splashRoute,
                    home:  LoginScreen(),

                    theme: ThemeData(
                      fontFamily: UserDataFromStorage.languageCodeFromStorage == 'en'?'poppins' : 'Somar',
                      scaffoldBackgroundColor: AppColor.white,
                      appBarTheme: const AppBarTheme(
                        iconTheme: IconThemeData(
                          color: AppColor.black
                        ),
                        systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: AppColor.white,
                          statusBarIconBrightness: Brightness.dark
                        ),
                        elevation: 0.0,
                      ),
                    ),


                    darkTheme: ThemeData(
                      fontFamily: UserDataFromStorage.languageCodeFromStorage == 'en'?'poppins' : 'Somar',
                      scaffoldBackgroundColor: AppColor.white,
                      appBarTheme: const AppBarTheme(
                        elevation: 0.0,
                      ),
                    ),

                  ),
                );
              });
            },
          );
        },
      ),
    );
  }
}


