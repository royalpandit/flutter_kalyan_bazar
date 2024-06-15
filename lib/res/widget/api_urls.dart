import 'dart:convert';

class AppUrls {
  // static const baseUrl = "https://nircore.betablackboard.in";
  static const baseUrl = "http://api.kalyanbazar.co.in/v1";
  static const getOtp = "$baseUrl/api/get-otp";
  static const loginEndPoint = "$baseUrl/api/login";
  static const registerEndPoint = "$baseUrl/api/register";
  static const username = 'admin';
  static const password = 'Admin@123';
  static const userpass = '$username:$password';
  //static const basicAuth = 'Basic ' + userpass;
 
 //static const basicAuth ='Basic ' + base64.encode(utf8.encode('$username:$password'));
  //print(basicAuth);
  static const kalLogin = "$baseUrl/user/login/";
  static const kalRegister = "$baseUrl/user/registration/";
  static const kalForgotPassword = "$baseUrl/forgot-password/";
  static const kalUserProfile = "$baseUrl/user/profile/";
  static const kalGetInformation = "$baseUrl/get-information";
  static const kalGetContactUs = "$baseUrl/get-contact-us";
  static const kalGetUrl = "$baseUrl/get-url";
  static const kalDashboardList = "$baseUrl/dashboard/list/";
  static const kalGetInnerMarket = "$baseUrl/dashboard/get-inner-market?";
  static const kalDashboardImageSlider = "$baseUrl/dashboard/get-image-slider";
  static const kalDashboardCreateBid = "$baseUrl/dashboard/create-bid/";
  static const kalFriendTransfer = "$baseUrl/friend-transfer";
  static const kalCreateUserUpi = "$baseUrl/create-user-upi/";
  static const kalUserBankAcountDetailCreate =
      "$baseUrl/user-bank-account-details-create/";
  static const kalUserBankAccountDetailList =
      "$baseUrl/user-bank-account-details-list/";
  static const kalGetUserUpi = "$baseUrl/get-user-upi/";
  static const kalAddFund = "$baseUrl/add-fund/";
  static const kalAddWithdrawal = "$baseUrl/add-withdrawl";

  static var moviesBaseUrl =
      'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/';
  static var moviesListEndPoint = '${moviesBaseUrl}movies_list';
}
