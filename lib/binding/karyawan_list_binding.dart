import 'package:get/get.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_list_controller.dart';

class KaryawanListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KaryawanListController>(() => KaryawanListController());
  }
}
