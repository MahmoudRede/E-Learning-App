import 'package:bloc/bloc.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_states.dart';
import 'package:e_learning_app/data/models/onboarding_model.dart';
import 'package:e_learning_app/presentation/styles/asset_manager.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/widget/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GlobalCubit extends Cubit<GlobalStates> {


  GlobalCubit() : super(InitialState());

  static GlobalCubit get(context) => BlocProvider.of(context);

  PageController pageController = PageController();

  TextEditingController otpController = TextEditingController();

  bool isLast = false;


  List<OnBoardingModel> onBoardingData = const[
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

  void checkOnBoardingIsLast(int index) {
    if (index == 2) {
      isLast = true;
    }
    else {
      isLast = false;
    }
    emit(CheckOnBoardingIsLastState());
  }


  Future<void> loginWithPhone({
    required String phoneNumber
  }) async {

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
    emit(LoginWithPhoneState());
  }


  Future<void> verificationCompleted(PhoneAuthCredential credential) async {
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) {
      debugPrint('Logged In Successfully');
    },);
    emit(LoginWithPhoneState());

  }

  Future<void> verificationFailed(FirebaseAuthException exception) async {
    if (exception.code == 'invalid-phone-number') {
      customToast(
          title: 'The phone Number is invalid',
          color: AppColor.red
      );
    }
    emit(LoginWithPhoneState());

  }

  var receivedID = '';

  Future<void> codeSent(String verificationId, int? resendToken)
  async{
    receivedID = verificationId;
    emit(LoginWithPhoneState());
  }

  Future<void> codeAutoRetrievalTimeout(String verificationId)
  async {
    debugPrint('TimeOut');
  }

  Future<void> verifyOTPCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: receivedID,
      smsCode: otpController.text,
    );
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) {
          customToast(title: 'User Login In Successful', color: AppColor.success);
          debugPrint('User Login In Successful');
          emit(LoginWithPhoneState());

    }).catchError((error){
      customToast(title: 'Please check and enter the correct verification code again', color: AppColor.error);
      debugPrint('Error in Verify code is ${error.toString()}');
      emit(LoginWithPhoneState());
    });

  }

  String countryCode = "20";
  changeCountryCode(String code){
    countryCode = code;
    debugPrint("country code is $code");
    emit(ChangeCountryCodeState());
  }

}