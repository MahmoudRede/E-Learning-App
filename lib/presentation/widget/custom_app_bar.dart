import 'package:e_learning_app/business_logic/app_localization.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomAppBar extends StatelessWidget {
  final String title;
  final bool withBackIcon;
  final bool withIcon;
  final String icon;
  final Function() iconOnTap;
  final Color iconColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.withBackIcon,
    required this.iconColor,
    required this.withIcon,
    required this.icon,
    required this.iconOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.height*0.05,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          // back icon
          Visibility(
            visible: withBackIcon,
            child: IconButton(
              onPressed: ()=>Navigator.pop(context),
              icon: SvgPicture.asset(
                'assets/icons/right_arrow.svg',
                height: SizeConfig.height*0.024,
                width: SizeConfig.height*0.04,
                color: iconColor,
              ),
            ),
          ),

          // enter Your Receipts text
          Expanded(
            child: Text(
            AppLocalizations.of(context)!.translate(title).toString(),
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: FontSize.headline2Size,
              color: AppColor.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          ),

          // second icon
          Visibility(
            visible: withIcon,
            child: IconButton(
              onPressed: iconOnTap,
              icon: SvgPicture.asset(
                icon,
                height: SizeConfig.height*0.024,
                width: SizeConfig.height*0.04,
                color: AppColor.primary,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
