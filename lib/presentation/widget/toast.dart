import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customToast({
  required String title,
  required Color color
})
{
  Fluttertoast.showToast(
      msg: title,
      textColor: AppColor.white,
      backgroundColor: color,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
  );

}
