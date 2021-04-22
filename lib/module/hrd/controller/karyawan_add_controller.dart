import 'dart:convert';

import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/module/hrd/model/karyawan_add_model.dart';
import 'package:hulwa_adel/route/routes.dart';

class KaryawanAddController extends GetxController {
  KaryawanAddModel dataKaryawanAdd;
  bool isLoading = false;

  void fetchKaryawanAdd(Map<String, dynamic> paramAPI, String urlAPI) async {
    // kasih tahu view kalo lagi loading
    isLoading = true;
    update();
    try {
      // get karyawanList dari server
      var karyawanListFromAPI = await PostRequestAPI.fetchAPI(paramAPI, urlAPI);
      // cek hasil fetch
      if (karyawanListFromAPI != null) {
        // kalo datanya ada
        var fetchData =
            KaryawanAddModel.fromJson(json.decode(karyawanListFromAPI));
        if (fetchData.msg == 'SUCCESS') {
          // karyawanList sukses
          dataKaryawanAdd = fetchData;
          Get.offAndToNamed(AppRoutes.KaryawanListPage);
          update();
        } else {
          // karyawanList gagal
          Get.snackbar('Warning', fetchData.msg);
        }
      } else {
        // error fetch kasih message error
        Get.snackbar('Warning', 'Fetch Karyawan failed, are you online??');
      }
    } finally {
      isLoading = false;
      update();
    }
  }
}
