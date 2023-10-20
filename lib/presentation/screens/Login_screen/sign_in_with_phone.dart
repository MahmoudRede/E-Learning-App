import 'package:e_learning_app/business_logic/global_cubit/global_cubit.dart';
import 'package:e_learning_app/helper/material_navigation.dart';
import 'package:e_learning_app/helper/validation/validatetors.dart';
import 'package:e_learning_app/presentation/screens/Login_screen/verifiy_phone_number.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:e_learning_app/presentation/widget/country_code_picker.dart';
import 'package:e_learning_app/presentation/widget/default_button.dart';
import 'package:e_learning_app/presentation/widget/default_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SignInWithPhone extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phoneNumber = TextEditingController();

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
         title: Text('Mobile Number',style: TextStyle(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                /// text
                Text('Enter your mobile number', style: TextStyle(
                    color: AppColor.black,
                    fontSize: FontSize.headline2Size
                ),),


                SizedBox(height: SizeConfig.height*.03,),

                /// phone number
                Row(
                  children: [

                    const Expanded(
                        flex: 1,
                        child: CountryCodePickerWidget()
                    ),

                    SizedBox(width: SizeConfig.height*.005,),

                    Expanded(
                      flex: 3,
                      child: DefaultTextField(
                          controller: phoneNumber,
                          hintText: 'enterPhoneNumber',
                          validator: (val) =>validatePhoneNumber2(context: context,value: val,length: 10),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                          onTap: () {}
                      ),
                    ),
                  ],
                ),

                SizedBox(height: SizeConfig.height*.05,),

                /// Login button
                DefaultButton(
                    buttonText: 'continue',
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        GlobalCubit.get(context).loginWithPhone(phoneNumber: '+${GlobalCubit.get(context).countryCode+phoneNumber.text}')
                            .then((value) {
                          customPushNavigator(context, OtpPhoneNumber());
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