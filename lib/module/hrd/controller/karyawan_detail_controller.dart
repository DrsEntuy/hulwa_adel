import 'dart:convert';

import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/module/hrd/model/karyawan_detail_model.dart';

class KaryawanDetailController extends GetxController {
  KaryawanDetailModel dataKaryawanDetail;
  bool isLoading = false;

  void fetchKaryawanDetail(Map<String, dynamic> paramAPI, String urlAPI) async {
    // kasih tahu view kalo lagi loading
    isLoading = true;
    update();
    try {
      // get karyawanList dari server
      var karyawanListFromAPI = await GetRequestAPI.fetchAPI(paramAPI, urlAPI);
      // cek hasil fetch
      if (karyawanListFromAPI != null) {
        // kalo datanya ada
        var fetchData =
            KaryawanDetailModel.fromJson(json.decode(karyawanListFromAPI));
        if (fetchData.msg == 'SUCCESS') {
          // karyawanList sukses
          dataKaryawanDetail = fetchData;
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
