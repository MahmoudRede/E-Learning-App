import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:flutter/material.dart';

class GenderBottomSheet extends StatelessWidget {
  const GenderBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height*0.6,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.height*0.02),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
