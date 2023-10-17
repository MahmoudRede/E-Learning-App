import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';


class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  bool withSuffix;
  bool isPassword;
  bool? enable;
  IconData? suffixIcon;
  final Function() onTap;
  int? maxLines;

   DefaultTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
    required this.textInputAction,
    this.withSuffix = false,
    this.isPassword = false,
    this.suffixIcon,
    this.enable = true,
    this.maxLines = 1,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: enable,
      style: TextStyle(
        fontSize: FontSize.headline4Size,
        color: AppColor.black,
      ),
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: FontSize.headline6Size,
          color: AppColor.red,
        ),

        hintText: AppLocalizations.of(context)!.translate(hintText).toString(),
        hintStyle: TextStyle(
          fontSize: FontSize.headline4Size,
          color: AppColor.lightGrey,
        ),
        suffixIcon: withSuffix==true ? Icon(
          suffixIcon,
          color: AppColor.border,
        ) :null,
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.height*0.01,
          vertical: SizeConfig.height*0.016
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.gray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.gray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.gray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.error,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        fillColor: Colors.blue,
      ),
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      validator: validator,
      maxLines: maxLines,
      obscureText: isPassword,
    );
  }
}
