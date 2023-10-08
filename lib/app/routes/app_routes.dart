import 'package:get/get.dart';
import 'package:mobile/app/modules/home/home.binding.dart';
import 'package:mobile/app/modules/home/home.page.dart';
import 'package:mobile/app/modules/initial/init.binding.dart';
import 'package:mobile/app/modules/initial/init.page.dart';
import 'package:mobile/app/modules/user/auth/auth.binding.dart';
import 'package:mobile/app/modules/user/auth/auth.page.dart';
import 'package:mobile/app/modules/user/profile/profile.binding.dart';
import 'package:mobile/app/modules/user/profile/profile.page.dart';
import 'package:mobile/app/modules/user/register/user.binding.dart';
import 'package:mobile/app/modules/user/register/user.page.dart';
import 'package:mobile/app/routes/app_pages.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => InitPage(),
      binding: InitBinding(),
    ),
    GetPage(
      name: AppRoutes.auth,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfilePage(),
        binding: ProfileBinding()),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.createUser,
      page: () => const UserRegisterPage(),
      binding: UserRegisterBinding(),
    )
  ];
}
