import 'package:e_learning_app/data/local/shared_preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'localization_states.dart';

class LocalizationCubit extends Cubit<LocalizationStates>{

  LocalizationCubit() : super(InitialState());

  static LocalizationCubit get(context) => BlocProvider.of(context);

  Locale _appLocale = const Locale('ar');

  Locale get appLocal => _appLocale;

  Future<void> fetchLocalization()async{
    UserDataFromStorage.getData();
    String languageCode = UserDataFromStorage.languageCodeFromStorage.toString();

    if(languageCode == 'null'){
      UserDataFromStorage.setAppLanguageCode("ar");
      UserDataFromStorage.setAppLanguageName("langArabic");
      _appLocale = const Locale("ar");
      changeLanguage(code: "en");
      debugPrint('default language is english');
      emit(FetchLocalizationState());
    }
    else{
      _appLocale = Locale(languageCode);
      debugPrint('default language is $languageCode');
      emit(FetchLocalizationState());
    }
    emit(FetchLocalizationState());
  }




  Future<void> changeLanguage({required String code})async{
    switch(code){
      case "ar":{
        _appLocale = const Locale("ar");
        UserDataFromStorage.setAppLanguageCode("ar");
        debugPrint('App language is Arabic');
        emit(ChangeToArabicState());
      }
      break;
      case "en":{
        _appLocale = const Locale("en");
        UserDataFromStorage.setAppLanguageCode("en");
        debugPrint('App language is English');
        emit(ChangeToEnglishState());
      }
      break;
    }
    emit(ChangeLanguageState());
  }



}