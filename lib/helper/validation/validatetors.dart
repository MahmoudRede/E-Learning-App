import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:flutter/material.dart';

const emojiRegex = '(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])';

String replaceEnglishNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(arabic[i], english[i]);
  }
  return input;
}

String? validateEmojiUserName(String value) {
  if(value.contains(emojiRegex)){
    value = value.replaceAll(emojiRegex,'');
  }
  return value;
}

bool validateEmailRegExp({ required String value, required BuildContext context}) {
  // This is just a regular expression for email addresses
  var p = "[a-zA-Z0-9+._%-+]{1,256}" """
\\@""" """
[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}""" "(" "\\." "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" ")+";
  RegExp regExp = RegExp(p);
  if (regExp.hasMatch(value)) {
    return true;
  }
  else{

    debugPrint('Email is not valid');

    return false;
  }

}





String? validatePhoneNumber({ required String? value, int length=10, required String countryCode ,required BuildContext context}) {

  if(replaceEnglishNumber(value!).isEmpty || value.isEmpty){
    return AppLocalizations.of(context)!.translate('phoneRequired').toString();
  }
  else if (countryCode == "20" && value.startsWith("0")) {
    return AppLocalizations.of(context)!.translate('phoneInvalid').toString();
  }

  return null;
}

String? validatePhoneNumber2({ required String? value, int length=10,required BuildContext context}) {

  if(replaceEnglishNumber(value!).isEmpty || value.isEmpty){
    return AppLocalizations.of(context)!.translate('phoneRequired').toString();
  }

  return null;
}


String? validateFirstName({ required String value, required BuildContext context}) {
  if(validateEmojiUserName(value).toString().trim().isEmpty){
    return AppLocalizations.of(context)!.translate('firstNameRequired').toString();
  }

  else if(validateEmojiUserName(value).toString().trim().length<3){
    return AppLocalizations.of(context)!.translate('validateName').toString();
  }
  return null;
}

String? validateUserName({ required String value, required BuildContext context}) {
  if(validateEmojiUserName(value).toString().trim().isEmpty){
    return AppLocalizations.of(context)!.translate('userNameRequired').toString();
  }

  else if(validateEmojiUserName(value).toString().trim().length<3){
    return AppLocalizations.of(context)!.translate('validateName').toString();
  }
  return null;
}

String? validateLastName({ required String value, required BuildContext context}) {
  if(validateEmojiUserName(value).toString().trim().isEmpty){
    return AppLocalizations.of(context)!.translate('lastNameRequired').toString();
  }

  else if(validateEmojiUserName(value).toString().trim().length<3){
    return AppLocalizations.of(context)!.translate('validateName').toString();
  }
  return null;
}

String? validatePinPut({ required String? value, required BuildContext context}) {
  if(value == null || value.isEmpty){
    return AppLocalizations.of(context)!.translate('codeRequired').toString();
  }
  return null;
}

String? validateBirthDate({ required String? value, required BuildContext context}) {
  if(value == null || value.isEmpty){
    return AppLocalizations.of(context)!.translate('codeRequired').toString();
  }
  return null;
}

String? validateSubject({ required String value, required BuildContext context}) {
  if(validateEmojiUserName(value).toString().trim().isEmpty){
    return AppLocalizations.of(context)!.translate('subjectRequired').toString();
  }
  return null;
}
String? validateField({ required String value, required BuildContext context}) {
  if(validateEmojiUserName(value).toString().trim().isEmpty){
    return AppLocalizations.of(context)!.translate('thisFieldRequired').toString();
  }
  return null;
}

String? validateGender({required String? value,required BuildContext context}){
  if(value==null || value.isEmpty){
    return AppLocalizations.of(context)!.translate('genderRequired').toString();
  }
  return null;
}

String? validateEmail({ required String value, required BuildContext context}) {
  if(value.toString().isEmpty){
    return AppLocalizations.of(context)!.translate('emailEmpty').toString();
  }
  else if(!validateEmailRegExp(context: context,value:value.toString(),)){
    return AppLocalizations.of(context)!.translate('emailNotValid').toString();
  }
  return null;
}
