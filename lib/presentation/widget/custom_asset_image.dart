import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  BoxFit? fit;
  CustomAssetImage({
    Key? key,
    required this.imagePath,
    required this.height,
    required this.width,
    this.fit = BoxFit.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imagePath),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
