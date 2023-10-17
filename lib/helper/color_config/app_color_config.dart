import 'package:e_learning_app/business_logic/theme_cubit/theme_cubit.dart';
import 'package:e_learning_app/data/local/shared_preference.dart';
import 'package:flutter/material.dart';


class ColorConfig {
  static ThemeCubit appConfig= ThemeCubit();


  //#region app bar Background  colors
  Color appbarBackgroundColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.appBar.appbarBackground:
      appConfig.appConfig.colors.lightMode.appBar.appbarBackground).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF1c1c1d).withOpacity(opacity);
    }
  }

//#endregion

  //#region app Primary colors
  Color primaryColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.primaryAndScaffold.primaryColor:
      appConfig.appConfig.colors.lightMode.primaryAndScaffold.primaryColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color secondaryColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.primaryAndScaffold.secondaryColor:
      appConfig.appConfig.colors.lightMode.primaryAndScaffold.secondaryColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion

  //#region Scaffold Background colors
  Color scaffoldBackgroundColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.primaryAndScaffold.scaffoldBackgroundColor:
      appConfig.appConfig.colors.lightMode.primaryAndScaffold.scaffoldBackgroundColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region appDivider colors
  Color dividerColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.divider.dividerColor:
      appConfig.appConfig.colors.lightMode.divider.dividerColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion

  //#region app Fonts colors
  Color fontBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBlackColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontWhiteColor:
      appConfig.appConfig.colors.lightMode.fonts.fontWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontDarkWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontDarkWhiteColor:
      appConfig.appConfig.colors.lightMode.fonts.fontDarkWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontRedColor:
      appConfig.appConfig.colors.lightMode.fonts.fontRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontBrownColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBrownColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBrownColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontBrownLightColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBrownLightColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBrownLightColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontDarkGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontDarkGreyColor:
      appConfig.appConfig.colors.lightMode.fonts.fontDarkGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontDarkGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontDarkGrey2Color:
      appConfig.appConfig.colors.lightMode.fonts.fontDarkGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontOrangeColor:
      appConfig.appConfig.colors.lightMode.fonts.fontOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey1Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey2Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color fontGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey3Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region card background colors
  Color cardBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBlackColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardWhiteColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardDarkWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardDarkWhiteColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardDarkWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardRedColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardBrownColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBrownColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBrownColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardBrownLightColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBrownLightColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBrownLightColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardDarkGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardDarkGreyColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardDarkGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardDarkGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardDarkGrey2Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardDarkGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardOrangeColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey1Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey2Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color cardGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey3Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region button colors
  Color buttonBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBlackColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonWhiteColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonDarkWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonDarkWhiteColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonDarkWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonRedColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonBrownColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBrownColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBrownColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonBrownLightColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBrownLightColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBrownLightColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonDarkGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonDarkGreyColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonDarkGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonDarkGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonDarkGrey2Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonDarkGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonOrangeColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey1Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey2Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color buttonGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey3Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region icon colors
  Color iconBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBlackColor:
      appConfig.appConfig.colors.lightMode.icons.iconBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconWhiteColor:
      appConfig.appConfig.colors.lightMode.icons.iconWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconDarkWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconDarkWhiteColor:
      appConfig.appConfig.colors.lightMode.icons.iconDarkWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconRedColor:
      appConfig.appConfig.colors.lightMode.icons.iconRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconBrownColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBrownColor:
      appConfig.appConfig.colors.lightMode.icons.iconBrownColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconBrownLightColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBrownLightColor:
      appConfig.appConfig.colors.lightMode.icons.iconBrownLightColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconDarkGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconDarkGreyColor:
      appConfig.appConfig.colors.lightMode.icons.iconDarkGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconDarkGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconDarkGrey2Color:
      appConfig.appConfig.colors.lightMode.icons.iconDarkGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconOrangeColor:
      appConfig.appConfig.colors.lightMode.icons.iconOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGrey1Color:
      appConfig.appConfig.colors.lightMode.icons.iconGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGrey2Color:
      appConfig.appConfig.colors.lightMode.icons.iconGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGrey3Color:
      appConfig.appConfig.colors.lightMode.icons.iconGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region loading colors
  Color loadingBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBlackColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingWhiteColor:
      appConfig.appConfig.colors.lightMode.loading.loadingWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingDarkWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingDarkWhiteColor:
      appConfig.appConfig.colors.lightMode.loading.loadingDarkWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingRedColor:
      appConfig.appConfig.colors.lightMode.loading.loadingRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingBrownColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBrownColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBrownColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingBrownLightColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBrownLightColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBrownLightColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingDarkGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingDarkGreyColor:
      appConfig.appConfig.colors.lightMode.loading.loadingDarkGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingDarkGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingDarkGrey2Color:
      appConfig.appConfig.colors.lightMode.loading.loadingDarkGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingOrangeColor:
      appConfig.appConfig.colors.lightMode.loading.loadingOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingGrey1Color:
      appConfig.appConfig.colors.lightMode.loading.loadingGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingGrey2Color:
      appConfig.appConfig.colors.lightMode.loading.loadingGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color loadingGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingGrey3Color:
      appConfig.appConfig.colors.lightMode.loading.loadingGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion


}


