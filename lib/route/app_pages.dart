part of 'routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.LoginPage,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: transitionFade,
    ),
    GetPage(
      name: AppRoutes.MenuPage,
      page: () => MenuPage(),
    ),
    GetPage(
      name: AppRoutes.KaryawanAddPage,
      page: () => KaryawanAddPage(),
      binding: KaryawanAddBinding(),
    ),
    GetPage(
      name: AppRoutes.KaryawanDetailPage,
      page: () => KaryawanDetailPage(),
      binding: KaryawanDetailBinding(),
    ),
    GetPage(
      name: AppRoutes.KaryawanListPage,
      page: () => KaryawanListPage(),
      binding: KaryawanListBinding(),
    ),
  ];
}
