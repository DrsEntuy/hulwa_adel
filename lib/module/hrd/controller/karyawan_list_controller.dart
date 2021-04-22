import 'dart:convert';

import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/module/hrd/model/karyawan_list_model.dart';

class KaryawanListController extends GetxController {
  KaryawanListModel dataKaryawanList;
  bool isLoading = false;

  @override
  void onInit() {
    fetchKaryawanList({}, urlKaryawanList);
    super.onInit();
  }

  void fetchKaryawanList(Map<String, dynamic> paramAPI, String urlAPI) async {
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
            KaryawanListModel.fromJson(json.decode(karyawanListFromAPI));
        if (fetchData.msg == 'SUCCESS') {
          // karyawanList sukses
          dataKaryawanList = fetchData;
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

  void fetchKaryawanSearch(Map<String, dynamic> paramAPI, String urlAPI) async {
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
            KaryawanListModel.fromJson(json.decode(karyawanListFromAPI));
        if (fetchData.msg == 'SUCCESS') {
          // karyawanList sukses
          dataKaryawanList = fetchData;
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
