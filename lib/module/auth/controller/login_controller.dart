import 'dart:convert';

import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/library/util/util.dart';
import 'package:hulwa_adel/module/auth/model/login_model.dart';
import 'package:hulwa_adel/route/routes.dart';

class LoginController extends GetxController {
  LoginModel dataLogin;
  bool isLoading = false;

  void fetchLogin(Map<String, dynamic> paramAPI, String urlAPI) async {
    // kasih tahu view kalo lagi loading
    isLoading = true;
    update();
    try {
      // get login dari server
      var loginFromAPI = await PostRequestAPI.fetchAPI(paramAPI, urlAPI);
      // cek hasil fetch
      if (loginFromAPI != null) {
        // kalo datanya ada
        var fetchData = LoginModel.fromJson(json.decode(loginFromAPI));
        if (fetchData.msg == 'SUCCESS') {
          // login sukses
          dataLogin = fetchData;
          // simpan data yg penting ke public
          UserData.pcUserData = loginFromAPI;
          UserToken.pcUserToken = fetchData.token;
          Get.offAllNamed(AppRoutes.MenuPage);
          update();
        } else {
          // login gagal
          Get.snackbar('Warning', fetchData.msg);
        }
      } else {
        // error fetch kasih message error
        Get.snackbar('Warning', 'Login failed, are you online??');
      }
    } finally {
      isLoading = false;
      update();
    }
  }
}
