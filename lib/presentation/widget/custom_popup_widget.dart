import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';


class CustomPopUpWidget extends StatelessWidget {
  final String titleText;
  final String descriptionText;

  final bool withTwoButton;
  final bool withCloseButton;

  final String oneButtonName;
  final String twoButtonName;

  final void Function() oneOnTap;
  final void Function() twoOnTap;


  const CustomPopUpWidget({
    Key? key,
    required this.titleText,
    required this.descriptionText,
    required this.withTwoButton,
    required this.oneButtonName,
    required this.twoButtonName,

    required this.oneOnTap,
    required this.twoOnTap,
    required this.withCloseButton,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.height * 0.35,bottom:SizeConfig.height * 0.15,),
      child: Align(
        alignment: Alignment.topCenter,
        child: Material(
          borderRadius: BorderRadius.circular(SizeConfig.height*0.025),
          color: AppColor.white,
          child: Directionality(
            textDirection: AppLocalizations.of(context)!.locale.languageCode=='ar'?TextDirection.rtl:TextDirection.ltr,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:SizeConfig.height * 0.02773,
                    vertical: SizeConfig.height * 0.015,
                  ),
                  width:SizeConfig.height * 0.35,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(SizeConfig.height*0.02),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      SizedBox(height:SizeConfig.height * 0.01 ,),

                      // title
                      Text(
                        AppLocalizations.of(context)!.translate(titleText).toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: FontSize.headline2Size,
                          color: AppColor.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height:SizeConfig.height * 0.01 ,),

                      // description
                      Text(
                        AppLocalizations.of(context)!.translate(descriptionText).toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: FontSize.headline4Size,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(height:SizeConfig.height * 0.02,),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: oneOnTap,
                            child: Text(
                              AppLocalizations.of(context)!.translate(oneButtonName).toString(),
                              style: TextStyle(
                                fontSize: FontSize.headline3Size,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          SizedBox(width:SizeConfig.height * 0.01 ,),

                          Visibility(
                            visible: withTwoButton,
                            child: TextButton(
                              onPressed: twoOnTap,
                              child: Text(
                                AppLocalizations.of(context)!.translate(twoButtonName).toString(),
                                style: TextStyle(
                                  fontSize: FontSize.headline3Size,
                                    color:AppColor.primary,
                                    fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




