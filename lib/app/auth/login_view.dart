import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_dh/app/auth/controllers/auth_controller.dart';
import 'package:project_dh/app/auth/register/register_view.dart';

import '../../util/components/default_button.dart';
import '../../util/size_config.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  static String routeName = "/login";

  final AuthController _loginController = Get.put(AuthController());
  final _key = GlobalKey<FormState>();
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/img/logo.png",
              height: 100,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Đăng nhập".tr,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                      controller: _loginController.accountTextController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "0935******",
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Tài khoản".tr,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 0),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      style: GoogleFonts.exo2(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Mời nhập tài khoản";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _loginController.passwordTextController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "******",
                      labelText: "Mật khẩu",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: GoogleFonts.exo2(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return "Mật khẩu phải có 6 kí tự";
                      }
                      return null;
                    },
                    style: GoogleFonts.exo2(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: remember,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                          });
                        },
                      ),
                      Text("Nhớ mật khẩu"),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Quên mật khẩu",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  DefaultButton(text: "Đăng nhập", press: () {}),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bạn chưa có tài khoản ?"),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          });
                        },
                        child: Text(
                          "Đăng kí",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
