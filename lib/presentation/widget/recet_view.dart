import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/material.dart';


class RecetView extends StatelessWidget {
  final Widget topWidget;
  final Widget bottomWidget;

  const RecetView({Key? key, required this.topWidget, required this.bottomWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.width,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(SizeConfig.height*0.02),
              topLeft: Radius.circular(SizeConfig.height*0.02),
            ),
            color: AppColor.white,
          ),

          child: topWidget,
        ),

        Container(
          width: SizeConfig.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bottom_receipt.png'),
              fit: BoxFit.fill,
            ),
            color: Colors.transparent,
          ),

          child: bottomWidget,
        ),
      ],
    );
  }
}
