import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/global/constants/responsive.dart';
import 'package:mobile/app/routes/app_pages.dart';

class MenuModel {
  String icon;
  String title;
  String router;
  MenuModel({required this.icon, required this.title, required this.router});
}

class JBDrawer extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const JBDrawer({super.key, required this.scaffoldKey});

  @override
  State<JBDrawer> createState() => _JBDrawerState();
}

class _JBDrawerState extends State<JBDrawer> {
  List<MenuModel> menu = [
    MenuModel(
      icon: 'assets/icons/Dashboard.svg',
      title: "Inicio",
      router: AppRoutes.paginaInicial,
    ),
    MenuModel(
      icon: 'assets/icons/profile.svg',
      title: "Perfil",
      router: AppRoutes.perfil,
    ),
    MenuModel(
      icon: 'assets/icons/setting.svg',
      title: "Configurações",
      router: AppRoutes.configuracoes,
    ),
    MenuModel(
      icon: 'assets/icons/history.svg',
      title: "Agendamentos",
      router: AppRoutes.agendamentos,
    ),
    MenuModel(
      icon: 'assets/icons/signout.svg',
      title: "Sair",
      router: AppRoutes.login,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: 300,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
              child: SizedBox(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture:
                      AppSession.getInstancia().getUsuario().getFotoPerfil() !=
                              null
                          ? Image.memory(
                              AppSession.getInstancia()
                                  .getUsuario()
                                  .getFotoPerfil(),
                            )
                          : const Icon(Icons.account_circle, size: 80),
                  accountName: Text(
                    AppSession.getInstancia().getUsuario().getNome(),
                    style: const TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  accountEmail: Text(
                    AppSession.getInstancia().getUsuario().getEmail(),
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: ThemeData()
                        .drawerTheme
                        .backgroundColor
                        ?.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: Responsive.isMobile(context) ? 40 : 80,
                ),
                for (var i = 0; i < menu.length; i++)
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      color: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(menu[i].router);
                        widget.scaffoldKey.currentState!.closeDrawer();
                      },
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 7),
                              child: SvgPicture.asset(menu[i].icon)),
                          Text(
                            menu[i].title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
