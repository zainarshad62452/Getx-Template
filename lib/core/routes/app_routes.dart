import 'package:get/get.dart';
import 'package:starter_template/view/auth/email_verification_screen/emailVerification.dart';
import 'package:starter_template/view/auth/login_screen/login_controller.dart';
import 'package:starter_template/view/auth/login_screen/login_screen.dart';
import 'package:starter_template/view/auth/signup_screen/signup_controller.dart';
import 'package:starter_template/view/auth/signup_screen/signup_screen.dart';
import 'package:starter_template/view/splash_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String emailVerificationScreen = '/email_verfication';
  static const String propertAppHomeScreenPage =
      '/propert_app_home_screen_page';

  static const String propertAppHomeScreenTabContainerScreen =
      '/propert_app_home_screen_tab_container_screen';
  static const String propertAppHomeFilterScreen =
      '/propert_app_home_filter_screen';

  static const String initialRoute = '/initialRoute';
  static const String buyerDashboard = '/buyer_dashboard';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => EmailVerification(),
      bindings: [],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [SignupBinding()],
    ),
  ];
}
