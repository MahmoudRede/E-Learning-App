class AppConfigModel {
  AppConfigModel({
    required this.colors,
  });

  final Colors colors;

  factory AppConfigModel.fromJson(Map<String, dynamic> json) => AppConfigModel(
    colors: Colors.fromJson(json["colors"]),
  );

}

class Colors {
  Colors({
    required this.lightMode,
    required this.darkMode,
  });

  final Mode lightMode;
  final Mode darkMode;

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    lightMode: Mode.fromJson(json["light_mode"]),
    darkMode: Mode.fromJson(json["dark_mode"]),
  );

}

class Mode {
  Mode({
    required this.appBar,
    required this.primaryAndScaffold,
    required this.divider,
    required this.fonts,
    required this.cardBackground,
    required this.buttons,
    required this.icons,
    required this.loading,
  });

  final AppBar appBar;
  final PrimaryAndScaffold primaryAndScaffold;
  final Divider divider;
  final Fonts fonts;
  final CardBackground cardBackground;
  final Buttons buttons;
  final Icons icons;
  final Loading loading;

  factory Mode.fromJson(Map<String, dynamic> json) => Mode(
    appBar: AppBar.fromJson(json["app_bar"]),
    primaryAndScaffold: PrimaryAndScaffold.fromJson(json["primary_and_scaffold"]),
    divider: Divider.fromJson(json["divider"]),
    fonts: Fonts.fromJson(json["fonts"]),
    cardBackground: CardBackground.fromJson(json["card_background"]),
    buttons: Buttons.fromJson(json["buttons"]),
    icons: Icons.fromJson(json["icons"]),
    loading: Loading.fromJson(json["loading"]),
  );


}

class AppBar {
  AppBar({
    required this.appbarBackground,
  });

  final String appbarBackground;

  factory AppBar.fromJson(Map<String, dynamic> json) => AppBar(
    appbarBackground: json["appbarBackground"],
  );

}

class Buttons {
  Buttons({
    required this.buttonWhiteColor,
    required this.buttonDarkWhiteColor,
    required this.buttonBlackColor,
    required this.buttonBrownColor,
    required this.buttonBrownLightColor,
    required this.buttonDarkGreyColor,
    required this.buttonDarkGrey2Color,
    required this.buttonGrey1Color,
    required this.buttonGrey2Color,
    required this.buttonGrey3Color,
    required this.buttonRedColor,
    required this.buttonOrangeColor,
  });

  final String buttonWhiteColor;
  final String buttonDarkWhiteColor;
  final String buttonBlackColor;
  final String buttonBrownColor;
  final String buttonBrownLightColor;
  final String buttonDarkGreyColor;
  final String buttonDarkGrey2Color;
  final String buttonGrey1Color;
  final String buttonGrey2Color;
  final String buttonGrey3Color;
  final String buttonRedColor;
  final String buttonOrangeColor;

  factory Buttons.fromJson(Map<String, dynamic> json) => Buttons(
    buttonWhiteColor: json["buttonWhiteColor"],
    buttonDarkWhiteColor: json["buttonDarkWhiteColor"],
    buttonBlackColor: json["buttonBlackColor"],
    buttonBrownColor: json["buttonBrownColor"],
    buttonBrownLightColor: json["buttonBrownLightColor"],
    buttonDarkGreyColor: json["buttonDarkGreyColor"],
    buttonDarkGrey2Color: json["buttonDarkGrey2Color"],
    buttonGrey1Color: json["buttonGrey1Color"],
    buttonGrey2Color: json["buttonGrey2Color"],
    buttonGrey3Color: json["buttonGrey3Color"],
    buttonRedColor: json["buttonRedColor"],
    buttonOrangeColor: json["buttonOrangeColor"],
  );

}

class CardBackground {
  CardBackground({
    required this.cardWhiteColor,
    required this.cardDarkWhiteColor,
    required this.cardBlackColor,
    required this.cardBrownColor,
    required this.cardBrownLightColor,
    required this.cardDarkGreyColor,
    required this.cardDarkGrey2Color,
    required this.cardGrey1Color,
    required this.cardGrey2Color,
    required this.cardGrey3Color,
    required this.cardRedColor,
    required this.cardOrangeColor,
  });

  final String cardWhiteColor;
  final String cardDarkWhiteColor;
  final String cardBlackColor;
  final String cardBrownColor;
  final String cardBrownLightColor;
  final String cardDarkGreyColor;
  final String cardDarkGrey2Color;
  final String cardGrey1Color;
  final String cardGrey2Color;
  final String cardGrey3Color;
  final String cardRedColor;
  final String cardOrangeColor;

  factory CardBackground.fromJson(Map<String, dynamic> json) => CardBackground(
    cardWhiteColor: json["cardWhiteColor"],
    cardDarkWhiteColor: json["cardDarkWhiteColor"],
    cardBlackColor: json["cardBlackColor"],
    cardBrownColor: json["cardBrownColor"],
    cardBrownLightColor: json["cardBrownLightColor"],
    cardDarkGreyColor: json["cardDarkGreyColor"],
    cardDarkGrey2Color: json["cardDarkGrey2Color"],
    cardGrey1Color: json["cardGrey1Color"],
    cardGrey2Color: json["cardGrey2Color"],
    cardGrey3Color: json["cardGrey3Color"],
    cardRedColor: json["cardRedColor"],
    cardOrangeColor: json["cardOrangeColor"],
  );

}

class Divider {
  Divider({
    required this.dividerColor,
  });

  final String dividerColor;

  factory Divider.fromJson(Map<String, dynamic> json) => Divider(
    dividerColor: json["dividerColor"],
  );

  Map<String, dynamic> toMap() => {
    "dividerColor": dividerColor,
  };
}

class Fonts {
  Fonts({
    required this.fontWhiteColor,
    required this.fontDarkWhiteColor,
    required this.fontBlackColor,
    required this.fontBrownColor,
    required this.fontBrownLightColor,
    required this.fontDarkGreyColor,
    required this.fontDarkGrey2Color,
    required this.fontGrey1Color,
    required this.fontGrey2Color,
    required this.fontGrey3Color,
    required this.fontRedColor,
    required this.fontOrangeColor,
  });

  final String fontWhiteColor;
  final String fontDarkWhiteColor;
  final String fontBlackColor;
  final String fontBrownColor;
  final String fontBrownLightColor;
  final String fontDarkGreyColor;
  final String fontDarkGrey2Color;
  final String fontGrey1Color;
  final String fontGrey2Color;
  final String fontGrey3Color;
  final String fontRedColor;
  final String fontOrangeColor;

  factory Fonts.fromJson(Map<String, dynamic> json) => Fonts(
    fontWhiteColor: json["fontWhiteColor"],
    fontDarkWhiteColor: json["fontDarkWhiteColor"],
    fontBlackColor: json["fontBlackColor"],
    fontBrownColor: json["fontBrownColor"],
    fontBrownLightColor: json["fontBrownLightColor"],
    fontDarkGreyColor: json["fontDarkGreyColor"],
    fontDarkGrey2Color: json["fontDarkGrey2Color"],
    fontGrey1Color: json["fontGrey1Color"],
    fontGrey2Color: json["fontGrey2Color"],
    fontGrey3Color: json["fontGrey3Color"],
    fontRedColor: json["fontRedColor"],
    fontOrangeColor: json["fontOrangeColor"],
  );

}

class Icons {
  Icons({
    required this.iconWhiteColor,
    required this.iconDarkWhiteColor,
    required this.iconBlackColor,
    required this.iconBrownColor,
    required this.iconBrownLightColor,
    required this.iconDarkGreyColor,
    required this.iconDarkGrey2Color,
    required this.iconGrey1Color,
    required this.iconGrey2Color,
    required this.iconGrey3Color,
    required this.iconRedColor,
    required this.iconOrangeColor,
  });

  final String iconWhiteColor;
  final String iconDarkWhiteColor;
  final String iconBlackColor;
  final String iconBrownColor;
  final String iconBrownLightColor;
  final String iconDarkGreyColor;
  final String iconDarkGrey2Color;
  final String iconGrey1Color;
  final String iconGrey2Color;
  final String iconGrey3Color;
  final String iconRedColor;
  final String iconOrangeColor;

  factory Icons.fromJson(Map<String, dynamic> json) => Icons(
    iconWhiteColor: json["iconWhiteColor"],
    iconDarkWhiteColor: json["iconDarkWhiteColor"],
    iconBlackColor: json["iconBlackColor"],
    iconBrownColor: json["iconBrownColor"],
    iconBrownLightColor: json["iconBrownLightColor"],
    iconDarkGreyColor: json["iconDarkGreyColor"],
    iconDarkGrey2Color: json["iconDarkGrey2Color"],
    iconGrey1Color: json["iconGrey1Color"],
    iconGrey2Color: json["iconGrey2Color"],
    iconGrey3Color: json["iconGrey3Color"],
    iconRedColor: json["iconRedColor"],
    iconOrangeColor: json["iconOrangeColor"],
  );

}

class Loading {
  Loading({
    required this.loadingWhiteColor,
    required this.loadingDarkWhiteColor,
    required this.loadingBlackColor,
    required this.loadingBrownColor,
    required this.loadingBrownLightColor,
    required this.loadingDarkGreyColor,
    required this.loadingDarkGrey2Color,
    required this.loadingGrey1Color,
    required this.loadingGrey2Color,
    required this.loadingGrey3Color,
    required this.loadingRedColor,
    required this.loadingOrangeColor,
  });

  final String loadingWhiteColor;
  final String loadingDarkWhiteColor;
  final String loadingBlackColor;
  final String loadingBrownColor;
  final String loadingBrownLightColor;
  final String loadingDarkGreyColor;
  final String loadingDarkGrey2Color;
  final String loadingGrey1Color;
  final String loadingGrey2Color;
  final String loadingGrey3Color;
  final String loadingRedColor;
  final String loadingOrangeColor;

  factory Loading.fromJson(Map<String, dynamic> json) => Loading(
    loadingWhiteColor: json["loadingWhiteColor"],
    loadingDarkWhiteColor: json["loadingDarkWhiteColor"],
    loadingBlackColor: json["loadingBlackColor"],
    loadingBrownColor: json["loadingBrownColor"],
    loadingBrownLightColor: json["loadingBrownLightColor"],
    loadingDarkGreyColor: json["loadingDarkGreyColor"],
    loadingDarkGrey2Color: json["loadingDarkGrey2Color"],
    loadingGrey1Color: json["loadingGrey1Color"],
    loadingGrey2Color: json["loadingGrey2Color"],
    loadingGrey3Color: json["loadingGrey3Color"],
    loadingRedColor: json["loadingRedColor"],
    loadingOrangeColor: json["loadingOrangeColor"],
  );

}

class PrimaryAndScaffold {
  PrimaryAndScaffold({
    required this.primaryColor,
    required this.secondaryColor,
    required this.scaffoldBackgroundColor,
  });

  final String primaryColor;
  final String secondaryColor;
  final String scaffoldBackgroundColor;

  factory PrimaryAndScaffold.fromJson(Map<String, dynamic> json) => PrimaryAndScaffold(
    primaryColor: json["primaryColor"],
    secondaryColor: json["secondaryColor"],
    scaffoldBackgroundColor: json["scaffoldBackgroundColor"],
  );

}