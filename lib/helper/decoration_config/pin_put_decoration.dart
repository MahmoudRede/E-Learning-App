import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


/// otp decoration

final defaultPinTheme = PinTheme(
  height: SizeConfig.height*0.02,
  width: SizeConfig.height * 0.06,
  decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
    border: Border.all(
      color: AppColor.border,
      width: 0.7,
    ),
  ),
);

final focusedPinTheme = PinTheme(
  height: SizeConfig.height*0.055,
  width: SizeConfig.height * 0.06,
  decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
    border: Border.all(
      color: AppColor.border,
      width: 0.7,
    ),
  ),
);

final submittedPinTheme = PinTheme(
  height: SizeConfig.height*0.055,
  width: SizeConfig.height * 0.06,

  decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
    border: Border.all(
      color: AppColor.border,
      width: 0.7,
    ),
  ),
);