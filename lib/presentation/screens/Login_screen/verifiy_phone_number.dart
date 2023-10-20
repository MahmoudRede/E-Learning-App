import 'package:e_learning_app/business_logic/global_cubit/global_cubit.dart';
import 'package:e_learning_app/helper/material_navigation.dart';
import 'package:e_learning_app/helper/validation/validatetors.dart';
import 'package:e_learning_app/presentation/screens/home_screen/home_screen.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:e_learning_app/presentation/widget/country_code_picker.dart';
import 'package:e_learning_app/presentation/widget/custom_pin_put_widget.dart';
import 'package:e_learning_app/presentation/widget/default_button.dart';
import 'package:e_learning_app/presentation/widget/default_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class OtpPhoneNumber extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();


  OtpPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: AppColor.black
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: AppColor.white,
              statusBarIconBrightness: Brightness.dark
          ),
          backgroundColor: AppColor.white,
          centerTitle: true,
          title: Text('OTP',style: TextStyle(
              fontSize: FontSize.headline2Size,
              color: AppColor.black
          ),),
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*.035),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                /// text
                Text('Enter Code', style: TextStyle(
                    color: AppColor.black,
                    fontSize: FontSize.headline2Size
                ),
                  textAlign: TextAlign.center,
                ),

                /// text
                Text('We have sent you on sms on\n +2012****6432 with a sex digit verification \n code[OTP]', style: TextStyle(
                    color: AppColor.DarkGrayColor,
                    fontSize: FontSize.headline3Size
                ),
                  textAlign: TextAlign.center,
                ),


                SizedBox(height: SizeConfig.height*.05,),

                /// OTP
                CustomPinPutWidget(
                    otpController: GlobalCubit.get(context).otpController,
                    onChanged: (val){},
                    onSubmit: (val){},
                    validator: (val)=>validatePinPut(context: context,value: val),
                    enabled: true,
                    length: 6
                ),

                SizedBox(height: SizeConfig.height*.05,),

                /// Login button
                DefaultButton(
                    buttonText: 'verify',
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        GlobalCubit.get(context).verifyOTPCode()
                            .then((value) {
                          // customPushNavigator(context, const HomeScreen());
                        });
                      }
                    },
                    buttonColor: AppColor.black
                ),

              ],
            ),
          ),
        ));
  }
}