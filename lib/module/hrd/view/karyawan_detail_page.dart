import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/constant.dart';
import 'package:hulwa_adel/library/util/widget.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_detail_controller.dart';
import 'package:lottie/lottie.dart';

class KaryawanDetailPage extends StatefulWidget {
  @override
  _KaryawanDetailPageState createState() => _KaryawanDetailPageState();
}

class _KaryawanDetailPageState extends State<KaryawanDetailPage> {
  final KaryawanDetailController c = Get.put(KaryawanDetailController());
  String karyawanId = Get.arguments[0];

  @override
  void initState() {
    super.initState();
    c.fetchKaryawanDetail({}, urlKaryawanDetail + '/' + karyawanId);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Karyawan Detail"),
      ),
      body: GetBuilder<KaryawanDetailController>(
        builder: (controller) {
          return controller.isLoading
              ? spinkitCircle
              : controller.dataKaryawanDetail == null
                  ? ListView(
                      children: [
                        Container(
                          height: size.height * 0.85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 300,
                                width: 300,
                                child: Lottie.asset(pathNotFound),
                              ),
                              Center(
                                child: Text(
                                    "Data tidak ditemukan, refresh untuk memuat ulang"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.all(defaultMargin),
                      child: Column(
                        children: [
                          Container(
                            height: 220,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Image.network(controller
                                          .dataKaryawanDetail.pasFoto ==
                                      ""
                                  ? 'https://www.freeiconspng.com/uploads/person-icon-person-icon-clipart-image-from-our-icon-clipart-category--9.png'
                                  : controller.dataKaryawanDetail.pasFoto),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            controller.dataKaryawanDetail.name,
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.phone,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[700],
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.email,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[700],
                                    ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Divisi".tr,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.divisi.name,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                          Divider(height: 1),
                          SizedBox(height: 5),
                          Text(
                            "Jabatan".tr,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.jabatan.name,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                          Divider(height: 1),
                          SizedBox(height: 5),
                          Text(
                            "Status Karyawan".tr,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.statusKaryawan,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                          Divider(height: 1),
                          SizedBox(height: 5),
                          Text(
                            "Status Pernikahan".tr,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.statusPernikahan,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                          Divider(height: 1),
                          SizedBox(height: 5),
                          Text(
                            "Alamat".tr,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            controller.dataKaryawanDetail.alamat,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
