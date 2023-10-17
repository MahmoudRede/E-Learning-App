
   //#region Base Urls
   const String baseUrl = 'https://r.receety.com'; // live url
   //#endregion


   //#region Home Receipts
   const String getHomeReceiptsUrl = '$baseUrl/listreceipts';
   //#endregion

   //#region get Receipt details
   String getReceiptDetailsUrl(int id) => '$baseUrl/listreceipts/$id';
   //#endregion

   //#region get statistics
   const String getStatisticsUrl = '$baseUrl/stats';
   //#endregion

   // /sendotp

   //#region send otp
   const String sendOtpUrl = '$baseUrl/sendotp';
   //#endregion


   //#region send otp
   const String verifyOtpUrl = '$baseUrl/verify';
   //#endregion

   //#region Sign up
   const String signUpUrl = '$baseUrl/signup';
   //#endregion

   // #region get user
   const String getUserUrl = '$baseUrl/getuser';
   //#endregion

   // #region delete user
   const String deleteUserUrl = '$baseUrl/deleteuser';
   //#endregion

   // #region check phone
   const String checkPhoneUrl = '$baseUrl/checkphone';
   //#endregion


   // #region contact us
   const String contactUsUrl = '$baseUrl/contactus';
   //#endregion

   // #region get vendors
   const String getVendorsUrl = '$baseUrl/listvendors';
   //#endregion

