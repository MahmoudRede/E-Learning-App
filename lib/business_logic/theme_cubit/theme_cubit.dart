import 'package:e_learning_app/data/local/shared_preference.dart';
import 'package:e_learning_app/helper/color_config/api_get_app_config.dart';
import 'package:e_learning_app/helper/color_config/app_config_model.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ChatInitial());

  static ThemeCubit get(context) => BlocProvider.of(context);

  late bool themeIsDarkMode=UserDataFromStorage.themeIsDarkMode;

  late final ThemeMode _mode =UserDataFromStorage.themeIsDarkMode?ThemeMode.dark:ThemeMode.light;
  ThemeMode get theMode => _mode;

  late AppConfigModel appConfig ;

  TextTheme textTheme=TextTheme(
    headline1: TextStyle(fontSize: SizeConfig.headline1Size, fontWeight: FontWeight.normal,),//26px
    headline2: TextStyle(fontSize: SizeConfig.headline2Size, fontWeight: FontWeight.normal, ),//20px
    headline3: TextStyle(fontSize: SizeConfig.headline3Size, fontWeight: FontWeight.normal, ),//18px
    headline4: TextStyle(fontSize: SizeConfig.headline4Size, fontWeight: FontWeight.normal, ),//16px
    headline5: TextStyle(fontSize: SizeConfig.headline5Size, fontWeight: FontWeight.normal, ),//14px
    headline6: TextStyle(fontSize: SizeConfig.headline6Size, fontWeight: FontWeight.normal, ),//12px
    subtitle1: TextStyle(fontSize: SizeConfig.subtitle1Size, fontWeight: FontWeight.normal, ),//10px
  );


  setThemeIsDarkMode({required bool darkMode}){
    // themeIsDarkMode=darkMode;
    // UserDataFromStorage.setThemeIsDarkMode(darkMode);
    // notifyListeners();
    //
    // if(themeIsDarkMode){
    //   _mode=ThemeMode.dark;
    // }
    // else{
    //   _mode=ThemeMode.light;
    // }
    // notifyListeners();

  }

  Future getAppConfigResponse() async {
    emit(GetAppConfigResponseLoadingState());
    appConfig = await AppConfigResponse().getAppConfigResponse();
    emit(GetAppConfigResponseSuccessState());
  }


}
