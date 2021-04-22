import 'package:get/get.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_add_controller.dart';

class KaryawanAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KaryawanAddController>(() => KaryawanAddController());
  }
}
