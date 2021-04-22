import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/lang.dart';
import 'package:hulwa_adel/route/routes.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: secondaryColor,
    ));
    return GetMaterialApp(
      title: 'Hulwa Adel',
      translations: Messages(),
      // locale: Locale('en', 'US'),
      locale: Locale('id', 'ID'),
      fallbackLocale: Locale('id', 'ID'),
      initialRoute: AppRoutes.LoginPage,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
    );
  }
}

// flutter build apk --build-name=0.0.1 --build-number=1
