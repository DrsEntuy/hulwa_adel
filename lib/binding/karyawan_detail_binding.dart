import 'package:get/get.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_detail_controller.dart';

class KaryawanDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KaryawanDetailController>(() => KaryawanDetailController());
  }
}
