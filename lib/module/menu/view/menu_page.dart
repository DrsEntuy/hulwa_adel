import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/constant.dart';
import 'package:hulwa_adel/library/util/util.dart';
import 'package:hulwa_adel/module/auth/model/login_model.dart';
import 'package:hulwa_adel/route/routes.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginModel dataLogin =
        LoginModel.fromJson(json.decode(UserData.pcUserData));
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: buildDrawer(dataLogin),
      body: Center(child: Text("HOME")),
    );
  }

  Widget buildDrawer(LoginModel dataLogin) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 170,
            color: secondaryColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          border: Border.all(color: mainColor, width: 3)),
                      child: CircleAvatar(
                        backgroundColor: secondaryColor,
                        backgroundImage: AssetImage(logoPath),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataLogin.name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ExpansionTile(
            title: Text("Dashboard"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("KPI"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("HRD"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.supervisor_account_sharp),
                title: Text("Setup"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.emoji_people),
                title: Text("Karyawan"),
                onTap: () {
                  Get.offAndToNamed(AppRoutes.KaryawanListPage);
                },
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text("Payroll"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("CRM"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.settings_accessibility),
                title: Text("Setup"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text("Request"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("Survey"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_remove),
                title: Text("Instalasi"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("PROCUREMENT"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.production_quantity_limits),
                title: Text("Stock"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("DOCUMENT"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.document_scanner),
                title: Text("Form"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.document_scanner_outlined),
                title: Text("Nodin"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.document_scanner_rounded),
                title: Text("Surat Masuk"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.document_scanner_sharp),
                title: Text("Surat Keluar"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("MASTER"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.add_box_rounded),
                title: Text("Paket"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Kost"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("USER"),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Role"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
