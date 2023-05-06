
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/features/auth/language.dart';
import 'package:fruit_market/features/auth/prsentation/pages/complete_information/complete_information_view.dart';
import 'package:fruit_market/features/auth/prsentation/signup/signup_view.dart';
import 'package:fruit_market/features/onboarding/on_boarding_view.dart';
import 'package:fruit_market/features/auth/prsentation/home_screen/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../auth.dart';
import '../features/auth/prsentation/pages/login/login_view.dart';
import '../features/splash/presentation/spash_view.dart';

List<GetPage<dynamic>>? routes = [
  //دي روتس بالجيت اكس هتمحي الداتا تلقائي من دون الجيت ديليت

//=============
GetPage(name:"/" , page: () => const SplashView(),
//middlewares: [Mymiddelware()]
),//استخدمتها هنا بدل الهوم في صفحه المين دارت
//وكده خلاص التطبيق هيفتح عادي بس ويديك اختيار اللغه بس اول ما توصل لصفحه اللوجن زي منا محددله في المي ميدل واير مش هيرجع تاني لصفحه اللغه او صفحه الاون بوردينج الا اذا حذفت التطبيق ونزلته تاني (مهمه)
//=============

  GetPage(name: AppRoute.language, page: () =>const Language()),

  // Auth :>
   GetPage(name: AppRoute.loginView, page: () => const LoginView()),
   GetPage(name: AppRoute.signUpView, page: () => const SignUpView()), 
   GetPage(name: AppRoute.completeInfomationView, page: () => const CompleteInfomationView()),
   GetPage(name: AppRoute.auth, page: () => const Auth()),
  // GetPage(name: AppRoute.Signup, page: () => const Signup()),
  // GetPage(name: AppRoute.forgetpassword, page: () => const Forgetpassword()),
   GetPage(name: AppRoute.onboardingView, page: () => const OnBoardingView()),
  // GetPage(name: AppRoute.verfiycode, page: () => const Verfiycode()),
  // GetPage(name: AppRoute.sucsesreset, page: () => const Sucsesreset()),
  // GetPage(name: AppRoute.sucsessignup, page: () => const Sucsessignup()),
  // onboarding :>
  // GetPage(name: AppRoute.resetpassword, page: () => const Resetpassword()),
  // GetPage(
  //     name: AppRoute.verfiycodesignup, page: () => const Verfiycodesignup()),
      GetPage(name: AppRoute.homescreen, page: () =>  Homescreen()),
];
