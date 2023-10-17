import 'dart:convert';
import 'package:e_learning_app/helper/color_config/app_config_model.dart';
import 'package:flutter/services.dart';

class AppConfigResponse{
  // Register api
  getAppConfigResponse()async{
    final String response = await rootBundle.loadString('assets/app_setting_json.json');
    var jsonObj = json.decode(response);

    // print("app config data is ${jsonObj.toString()}");
    AppConfigModel loginModel = AppConfigModel.fromJson(jsonObj);
    return loginModel;
  }


}
