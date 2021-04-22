import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hulwa_adel/library/service/api_request.dart';
import 'package:hulwa_adel/library/theme/theme.dart';
import 'package:hulwa_adel/library/util/constant.dart';
import 'package:hulwa_adel/library/util/widget.dart';
import 'package:hulwa_adel/module/auth/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nikController.text = "superadmin";
    _passwordController.text = "superadmin";
    return Scaffold(
        backgroundColor: fourthColor,
        body: GetBuilder<LoginController>(
          builder: (loginController) {
            return LayoutBuilder(
              builder: (context, constraint) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: SafeArea(
                        child: Container(
                          color: fourthColor,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 150,
                                          child: Image.asset(logoPath),
                                        ),
                                        SizedBox(height: 70.0),
                                        TextField(
                                          controller: _nikController,
                                          obscureText: false,
                                          style: TextStyle(fontSize: 15.0),
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      20.0, 15.0, 20.0, 15.0),
                                              hintText: "nik".tr,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                        ),
                                        SizedBox(height: 10.0),
                                        TextField(
                                          controller: _passwordController,
                                          obscureText: true,
                                          style: TextStyle(fontSize: 15.0),
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      20.0, 15.0, 20.0, 15.0),
                                              hintText: "password".tr,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                        ),
                                        SizedBox(height: 15.0),
                                        Material(
                                          // elevation: 5.0,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: mainColor,
                                          child: MaterialButton(
                                            minWidth: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.fromLTRB(
                                                20.0, 15.0, 20.0, 15.0),
                                            onPressed: () {
                                              // LOGIN
                                              Map<String, dynamic> _paramAPI = {
                                                "nik": _nikController.text,
                                                "password":
                                                    _passwordController.text,
                                              };
                                              String _urlAPI = urlLogin;
                                              loginController.fetchLogin(
                                                  _paramAPI, _urlAPI);
                                            },
                                            child: loginController.isLoading
                                                ? spinkitCircleButton
                                                : Text("login".tr,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                            fontSize: 15.0)
                                                        .copyWith(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: InkWell(
                                        onTap: () {
                                          Get.offAndToNamed('/pos_page');
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'hulwaAdel 2021',
                                              style: TextStyle(fontSize: 11),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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
        ));
  }
}
