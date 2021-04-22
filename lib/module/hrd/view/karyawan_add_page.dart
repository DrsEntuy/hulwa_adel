import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/widget.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_add_controller.dart';
import 'package:hulwa_adel/module/hrd/controller/karyawan_list_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:math' as Math;
import 'package:image/image.dart' as Img;

class KaryawanAddPage extends StatefulWidget {
  @override
  _KaryawanAddPageState createState() => _KaryawanAddPageState();
}

class _KaryawanAddPageState extends State<KaryawanAddPage> {
  final KaryawanListController c = Get.put(KaryawanListController());
  TextEditingController _nikController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  var imageFile;
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Karyawan Add"),
      ),
      body: GetBuilder<KaryawanAddController>(
        builder: (addController) {
          return LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: SafeArea(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextField(
                                      controller: _nikController,
                                      obscureText: false,
                                      style: TextStyle(fontSize: 15.0),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 15.0, 20.0, 15.0),
                                          hintText: "nik".tr,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                    ),
                                    SizedBox(height: 10.0),
                                    TextField(
                                      controller: _nameController,
                                      obscureText: false,
                                      style: TextStyle(fontSize: 15.0),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 15.0, 20.0, 15.0),
                                          hintText: "Name".tr,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                    ),
                                    SizedBox(height: 10.0),
                                    TextField(
                                      keyboardType: TextInputType.number,
                                      controller: _phoneController,
                                      obscureText: false,
                                      style: TextStyle(fontSize: 15.0),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 15.0, 20.0, 15.0),
                                          hintText: "Mobile Phone".tr,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                    ),
                                    SizedBox(height: 10.0),
                                    TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: _emailController,
                                      obscureText: false,
                                      style: TextStyle(fontSize: 15.0),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 15.0, 20.0, 15.0),
                                          hintText: "Email".tr,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                    ),
                                    SizedBox(height: 10.0),
                                    Column(
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          width: double.infinity,
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16, 20, 16, 20),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Upload foto karyawan",
                                                  ),
                                                  SizedBox(height: 20),
                                                  _image != null
                                                      ? Container(
                                                          height: 140,
                                                          width: 140,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              image: DecorationImage(
                                                                  image:
                                                                      FileImage(
                                                                          _image),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                        )
                                                      : Container(
                                                          height: 40.0,
                                                          width: 320.0,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              getImageCamera();
                                                              // Navigator.pop(context);
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      darkerColor,
                                                                  style:
                                                                      BorderStyle
                                                                          .solid,
                                                                  width: 2.0,
                                                                ),
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Center(
                                                                    child: Text(
                                                                      "AMBIL PHOTO",
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            darkerColor,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        letterSpacing:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15.0),
                                    Material(
                                      // elevation: 5.0,
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: mainColor,
                                      child: MaterialButton(
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 15.0, 20.0, 15.0),
                                        onPressed: () async {
                                          // LOGIN
                                          print(_nikController.text);
                                          Map<String, dynamic> _paramAPI = {
                                            "nik": _nikController.text,
                                            "password": "superadmin2",
                                            "name": _nameController.text,
                                            "email": _emailController.text,
                                            "phone": _phoneController.text,
                                            "role_id":
                                                "ec6a5f55-8fe6-4fcc-8879-6e610458c74e",
                                            "tgl_lahir": "1900-2-1",
                                            "no_ktp": "0",
                                            "no_npwp": "0",
                                            "no_rekening": "0",
                                            "status_pernikahan": "complicated",
                                            "pendidikan": "S7",
                                            "mulai_bergabung": "2021-1-1",
                                            "alamat": "dunia maya",
                                            "emergency_contact": "Elon Musk",
                                            "no_bpjs_kesehatan": "0",
                                            "no_bpjs_ketenagakerjaan": "0",
                                            "divisi_id":
                                                "1b096038-85b0-4aeb-b5d5-c913a8121757",
                                            "jabatan_id":
                                                "60dc973e-4bbc-4e10-a7f4-99418e5b7d98",
                                            "status_karyawan": "Numpang",
                                            "pas_foto": "",
                                            "file_kk": "",
                                            "file_ktp": "",
                                            "file_npwp": "",
                                            "file_cv": "",
                                            "file_psikotest": "",
                                            "author":
                                                "72f915ab-bdf5-4a28-9436-57ce6de05501"
                                          };
                                          String _urlAPI = urlKaryawanAdd;
                                          addController.fetchKaryawanAdd(
                                              _paramAPI, _urlAPI);

                                          c.fetchKaryawanList(
                                              {}, urlKaryawanList);
                                        },
                                        child: addController.isLoading
                                            ? spinkitCircleButton
                                            : Text("Save".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 15.0)
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //     c.fetchKaryawanList({}, urlKaryawanList);
      //   },
      //   child: Icon(Icons.add, color: Colors.white),
      // ),
    );
  }

  Future getImageCamera() async {
    imageFile = await ImagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 60,
      preferredCameraDevice: CameraDevice.rear,
    );
    if (imageFile != null) {
      _cropImage();
    }
  }

  Future<Null> _cropImage() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;

    int rand = Math.Random().nextInt(100000);

    Img.Image image = Img.decodeImage(imageFile.readAsBytesSync());

    var compressImg = File("$path/image_$rand.jpg")
      ..writeAsBytesSync(Img.encodeJpg(image, quality: 75));

    setState(() {
      _image = compressImg;
    });
  }
}
