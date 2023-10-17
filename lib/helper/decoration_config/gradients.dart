import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonGradient extends LinearGradient {
  ButtonGradient({bool isHorizontal = true})
      : super(
    colors: [
      Color(0xFF268dd5).withOpacity(0.8),
      AppColor.primary,
    ],
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
    // stops: [0.0 , 1.0]
  );
}
