import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/widget/bottom_sheets_widgets/gender_bottom_sheet.dart';
import 'package:e_learning_app/presentation/widget/custom_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class ShowPopUpFunctions {

  ShowPopUpFunctions._();

  static showDefaultAlert({
    required BuildContext context,
    required bool hideWhenTap,
    required bool withCloseButton,
    required String titleText,
    required String descriptionText,
    required bool withTwoButton,
    required String oneButtonName,
    required String twoButtonName,
    required void Function() oneOnTap,
    required void Function() twoOnTap,
  }){
    return showDialog(
      context: context,
      barrierColor: AppColor.gray.withOpacity(0.7),
      barrierDismissible: hideWhenTap,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: ()async{
            return hideWhenTap;
          },
          child: CustomPopUpWidget(
            titleText: titleText,
            descriptionText:descriptionText,
            oneButtonName:oneButtonName ,
            oneOnTap:oneOnTap ,
            twoButtonName: twoButtonName,
            twoOnTap:twoOnTap,
            withTwoButton: withTwoButton,
            withCloseButton: withCloseButton,
          ),
        );
      },
    );
  }


  static customToast({required BuildContext context , required String message, required Color color , required bool isTranslate}){
    Fluttertoast.showToast(
      msg: isTranslate== true ?AppLocalizations.of(context)!.translate(message).toString():message,
      textColor: AppColor.white,
      backgroundColor: color,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static showGenderBottomSheet(BuildContext context){
    return showBarModalBottomSheet(
      context: context,
      backgroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.height*0.02),
            topRight: Radius.circular(SizeConfig.height*0.02),
          )
      ),

      builder: (context) {
        return const GenderBottomSheet();
      },
    );
  }


}