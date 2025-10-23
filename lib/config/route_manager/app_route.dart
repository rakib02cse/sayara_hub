import 'package:get/get.dart';
import 'package:sayara_hub_rakibcse02/screens/forgot_password/check_email_page.dart';
import 'package:sayara_hub_rakibcse02/screens/forgot_password/fotgot_password.dart';
import 'package:sayara_hub_rakibcse02/screens/forgot_password/otp_verification_page.dart';
import 'package:sayara_hub_rakibcse02/screens/get_started/get_started_page1.dart';
import 'package:sayara_hub_rakibcse02/screens/get_started/get_started_page2.dart';
import 'package:sayara_hub_rakibcse02/screens/get_started/get_started_page3.dart';
import 'package:sayara_hub_rakibcse02/screens/get_started/get_started_page4.dart';
import 'package:sayara_hub_rakibcse02/screens/sign_in_screen/sign_in.dart';
import 'package:sayara_hub_rakibcse02/screens/sign_up_screen/sign_up.dart';
import 'package:sayara_hub_rakibcse02/splash/splash_screen.dart';


class AppRoutes {
  static const String signIn = "/sign_in.dart";
  static const String signUp = "/sign_up.dart";
  static const String splash = "/splash_screen.dart";
  static const String checkEmail = "/check_email_page.dart";
  static const String otpVerification = "/otp_verification_page.dart";
  static const String forgotPasswordPage = "/fotgot_password.dart";
  static const String getStarted1 = "/get_started_page1.dart";
  static const String getStarted2 = "/get_started_page2.dart";
  static const String getStarted3 = "/get_started_page3.dart";
  static const String getStarted4 = "/get_started_page4.dart";
  
  static final List<GetPage> routes = [
    GetPage(name: signIn, page: () =>  const SignIn()),
    GetPage(name: signUp, page: () =>  const SignUp()),
    GetPage(name: checkEmail, page: () =>  const CheckEmailPage()),
    GetPage(name: otpVerification, page: () =>  OtpVerificationPage()),
    GetPage(name: forgotPasswordPage, page: () => ForgotPasswordPage()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: getStarted1, page: () => const GetStartedPage1()),
    GetPage(name: getStarted2, page: () => const GetStartedPage2()),
    GetPage(name: getStarted3, page: () => const GetStartedPage3()),
    GetPage(name: getStarted4, page: () => const GetStartedPage4()),
  ];
}