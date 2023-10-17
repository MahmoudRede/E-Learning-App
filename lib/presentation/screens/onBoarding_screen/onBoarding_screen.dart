import 'package:e_learning_app/business_logic/global_cubit/global_cubit.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_states.dart';
import 'package:e_learning_app/data/models/onboarding_model.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/asset_manager.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:e_learning_app/presentation/widget/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit,GlobalStates>(
      listener: (context,state){

      },
      builder: (context,state){
        var cubit=GlobalCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [

                  SizedBox(height: SizeConfig.height*.05,),

                  /// Skip Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*.04),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('Skip',style: TextStyle(
                        fontSize: FontSize.headline2Size,
                        color: AppColor.DarkGrayColor,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height:SizeConfig.height*.65,
                    child: PageView.builder(
                      onPageChanged: (index){
                         cubit.checkOnBoardingIsLast(index);
                      },
                      controller: cubit.pageController,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context,index){
                        return Column(
                          children: [

                            SizedBox(height: SizeConfig.height*.02,),


                            /// Large image
                            Image(
                              height: SizeConfig.height*.32,
                              width: SizeConfig.height*.32,
                              image: AssetImage(cubit.onBoardingData[index].image!),
                            ),


                            SizedBox(height: SizeConfig.height*.03,),


                            /// Title
                            Text(cubit.onBoardingData[index].title,style: TextStyle(
                              fontSize: FontSize.headline1Size,
                              color: AppColor.black,
                              fontWeight: FontWeight.bold,
                            ),
                              textAlign: TextAlign.center,
                            ),


                            SizedBox(height: SizeConfig.height*.03,),


                            /// Body
                            Text(cubit.onBoardingData[index].body,style: TextStyle(
                              fontSize: FontSize.headline2Size,
                              color: AppColor.DarkGrayColor,
                              fontWeight: FontWeight.w300,
                            ),
                              textAlign: TextAlign.center,
                            ),

                          ],
                        );
                      },
                      itemCount: cubit.onBoardingData.length,

                    ),
                  ),

                  /// Smooth Indicator
                  SmoothPageIndicator(
                    controller: cubit.pageController,
                    count: cubit.onBoardingData.length,
                    effect:  ExpandingDotsEffect(
                        spacing:8.0,
                        radius:4.0,
                        dotWidth:SizeConfig.height*.02,
                        dotHeight:SizeConfig.height*.01,
                        strokeWidth:1.5,
                        dotColor:AppColor.gray,
                        activeDotColor:AppColor.primary
                    ),
                  ),

                  SizedBox(height: SizeConfig.height*.08,),


                  cubit.isLast?


                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*.02),
                    child: Row(
                      children: [
                        Expanded(
                          child: DefaultButton(
                              buttonText: 'signUp',
                              onPressed: (){},
                              buttonColor: AppColor.primary
                          ),
                        ),

                        SizedBox(width: SizeConfig.height*.02,),

                        Expanded(
                          child: DefaultButton(
                              buttonText: 'logIn',
                              onPressed: (){},
                              buttonColor: AppColor.black
                          ),
                        ),
                      ],
                    ),
                  ):Container()


                ],
              ),


            ),
          );
      },
    );
  }
}
