import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';


class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator validator;
  final Function(String) onChange;
  final Function() onTop;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Widget suffixIcon;
  bool enable;


  SearchTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
    required this.textInputAction,
    required this.onChange,
    required this.onTop,
    required this.suffixIcon,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTop,
      enabled: enable,
      style: TextStyle(
        fontSize: FontSize.headline2Size,
        color: AppColor.lighttext1,
      ),
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.translate(hintText).toString(),
        hintStyle: TextStyle(
          fontSize: FontSize.headline2Size,
          color: AppColor.lightGrey,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.height*0.025,
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.primary,
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
        fillColor: Colors.blue,
      ),
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChange,
    );
  }
}
