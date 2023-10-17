import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  double? width;
  final Color buttonColor;

  CustomOutlinedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.width = double.infinity,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: SizeConfig.height*0.055,
        width: SizeConfig.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
          border: Border.all(
            width: 1,
            color: AppColor.primary,
          ),
          color: AppColor.white,
        ),

        child: Text(
          AppLocalizations.of(context)!.translate(buttonText).toString(),
          style: TextStyle(
            fontSize: FontSize.headline3Size,
            fontWeight: FontWeight.w500,
            color: AppColor.primary,
          ),
        ),
      ),
    );
  }
}
