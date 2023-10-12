import 'package:get/get.dart';
import 'package:mobile/app/modules/form09601/Form09601.binding.dart';
import 'package:mobile/app/modules/form09601/Form09601.page.dart';
import 'package:mobile/app/modules/form09603/form09603.binding.dart';
import 'package:mobile/app/modules/form09603/form09603.page.dart';
import 'package:mobile/app/modules/form09604/form09604.binding.dart';
import 'package:mobile/app/modules/form09604/form09604.page.dart';
import 'package:mobile/app/modules/form09605/form09604.page.dart';
import 'package:mobile/app/modules/form09605/form09605.binding.dart';
import 'package:mobile/app/modules/initial/init.binding.dart';
import 'package:mobile/app/modules/initial/init.page.dart';
import 'package:mobile/app/modules/user/auth/auth.binding.dart';
import 'package:mobile/app/modules/user/auth/auth.page.dart';
import 'package:mobile/app/modules/user/profile/profile.binding.dart';
import 'package:mobile/app/modules/user/profile/profile.page.dart';
import 'package:mobile/app/modules/user/register/user.binding.dart';
import 'package:mobile/app/modules/user/register/user.page.dart';
import 'package:mobile/app/modules/form09602/form09602.binding.dart';
import 'package:mobile/app/modules/form09602/form09602.page.dart';
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
      page: () => Form09601Page(),
      binding: Form09601Binding(),
    ),
    GetPage(
      name: AppRoutes.createUser,
      page: () => const UserRegisterPage(),
      binding: UserRegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.recibos,
      page: () => const Form09602Page(),
      binding: Form09602Binding(),
    ),
    GetPage(
      name: AppRoutes.informes,
      page: () => const Form09603Page(),
      binding: Form09603Binding(),
    ),
    GetPage(
      name: AppRoutes.ferias,
      page: () => const Form09604Page(),
      binding: Form09604Binding(),
    ),
    GetPage(
      name: AppRoutes.ponto,
      page: () => const Form09605Page(),
      binding: Form09605Binding(),
    )
  ];
}
