import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/cupertino.dart';

class LoadingAnimationWidget extends StatefulWidget {
  final double? size;
  final Color? color;
  final double? paddingTop;

  const LoadingAnimationWidget({Key? key,this.size, this.color,this.paddingTop,}) : super(key: key);


  @override
  State<LoadingAnimationWidget> createState() => _LoadingAnimationWidgetState();
}

class _LoadingAnimationWidgetState extends State<LoadingAnimationWidget> {

  normalLoading({double? size,double? paddingTop,Color? color,}){

    return Container(
      margin: EdgeInsets.only(top: paddingTop ?? 0),
      width: size ?? SizeConfig.height * 0.075,
      height: size ?? SizeConfig.height * 0.075,
      child:CupertinoActivityIndicator(
        radius: size ?? SizeConfig.height * 0.02,
        color:color?? AppColor.lightGrey,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return normalLoading(size:widget.size,paddingTop: widget.paddingTop );
  }
}