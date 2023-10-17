import 'package:bloc/bloc.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_states.dart';
import 'package:e_learning_app/data/models/onboarding_model.dart';
import 'package:e_learning_app/presentation/styles/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GlobalCubit extends Cubit<GlobalStates>{


  GlobalCubit() : super(InitialState());

  static GlobalCubit get(context) => BlocProvider.of(context);

  PageController pageController= PageController();

  bool isLast=false;

  List<OnBoardingModel> onBoardingData= const[
    OnBoardingModel(
        image: AssetManager.onBoardingImage1,
        title: "Numerous free \ntrial courses",
        body: "Free courses for you to \find your way to learning"
    ),
    OnBoardingModel(
        image: AssetManager.onBoardingImage2,
        title: "Quick and easy \nlearning",
        body: "Easy and fast learning at \nany time to help you \nimprove various skills"
    ),
    OnBoardingModel(
        image: AssetManager.onBoardingImage3,
        title: "Create your own \nstudy plan",
        body: "Study according to the \nstudy plan, make study \nmore motivated"
    ),
  ];

  void checkOnBoardingIsLast(int index){

    if(index==2){
      isLast=true;
    }
    else{
      isLast=false;
    }
    emit(CheckOnBoardingIsLastState());

  }


}