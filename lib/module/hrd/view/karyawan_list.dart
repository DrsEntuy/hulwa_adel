import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/constant.dart';
import 'package:hulwa_adel/library/util/util.dart';
import 'package:hulwa_adel/library/util/widget.dart';
import 'package:hulwa_adel/module/auth/model/login_model.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_list_controller.dart';
import 'package:hulwa_adel/route/routes.dart';
import 'package:lottie/lottie.dart';

class KaryawanListPage extends GetView<KaryawanListController> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    final size = MediaQuery.of(context).size;

    LoginModel dataLogin =
        LoginModel.fromJson(json.decode(UserData.pcUserData));

    return Scaffold(
      appBar: AppBar(
        title: Text("Karyawan List"),
      ),
      body: GetBuilder<KaryawanListController>(
        builder: (controller) {
          return RefreshIndicator(
            onRefresh: () async {
              controller.fetchKaryawanList({}, urlKaryawanList);
            },
            child: !dataLogin.accessrole.hrd.karyawan.create
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
                                  "Anda tidak di perkenankan menagkses list karyawan"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : controller.isLoading
                    ? spinkitCircle
                    : controller.dataKaryawanList == null
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
                        : Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(defaultMargin),
                                child: TextField(
                                  onSubmitted: (String searchValue) {
                                    if (searchValue != "") {
                                      Map<String, dynamic> _paramAPI = {
                                        "keyword": _searchController.text
                                      };
                                      controller.fetchKaryawanSearch(
                                          _paramAPI, urlKaryawanSearch);
                                    } else {
                                      controller.fetchKaryawanList(
                                          {}, urlKaryawanList);
                                    }
                                  },
                                  controller: _searchController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(5),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Cari Karyawan',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemCount: controller.dataKaryawanList.count,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Get.toNamed(
                                            AppRoutes.KaryawanDetailPage,
                                            arguments: [
                                              controller.dataKaryawanList
                                                  .data[index].karyawanId
                                            ]);
                                      },
                                      child: Container(
                                        child: ListTile(
                                          leading: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                getInitials(controller
                                                    .dataKaryawanList
                                                    .data[index]
                                                    .name),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.grey[700]),
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            controller.dataKaryawanList
                                                .data[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .copyWith(
                                                  color: mainColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          subtitle: Text(
                                            controller.dataKaryawanList
                                                .data[index].divisi.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                .copyWith(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (dataLogin.accessrole.hrd.karyawan.create) {
            Get.toNamed(AppRoutes.KaryawanAddPage);
          } else {
            Get.snackbar(
                'Warning', 'anda tidak diperkenankan membuat karyawan baru');
          }
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
