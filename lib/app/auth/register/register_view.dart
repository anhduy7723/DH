import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dh/app/auth/login_view.dart';
import 'package:project_dh/app/auth/register/register_view_2.dart';
import 'package:project_dh/util/size_config.dart';

import '../../../util/components/default_button.dart';
import '../../../util/validator.dart';
import '../controllers/auth_controller.dart';

class RegisterPage extends StatefulWidget {
  static String routeName = "/register";
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _key = GlobalKey<FormState>();
  bool _showPassword = false;
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: _key,
        child: SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: SizeConfig.screenWidth * 0.85,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Đăng kí",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.05,
                    ),
                    TextFormField(
                      validator: (value) =>
                          Validator.validateAccount(value ?? ""),
                      controller: _authController.accountTextController,
                      decoration: InputDecoration(
                        hintText: "0935******",
                        labelText: "Tài khoản",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      obscureText: _showPassword,
                      validator: (value) =>
                          Validator.validatePassword(value ?? ""),
                      controller: _authController.passwordTextController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: "******",
                          labelText: "Mật khẩu",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
                          ),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      obscureText: _showPassword,
                      validator: (value) =>
                          Validator.validatePassword(value ?? ""),
                      controller: _authController.passwordTextController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: "******",
                          labelText: "Nhập lại mật khẩu",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
                          ),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.06,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterView2())),
                        child: Text(
                          "Đăng kí",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: DefaultButton(
                          text: 'Đăng nhập',
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView())),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
