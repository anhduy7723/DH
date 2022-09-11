import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project_dh/app/auth/controllers/auth_controller.dart';
import 'package:project_dh/app/auth/login_view.dart';
import 'package:project_dh/util/validator.dart';

import '../../../util/size_config.dart';

class RegisterView2 extends StatefulWidget {
  @override
  _RegisterView2 createState() => _RegisterView2();
}

class _RegisterView2 extends State<RegisterView2> {
  final _key = GlobalKey<FormState>();
  final AuthController authController = Get.put(AuthController());
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    authController.dateController.text = "";
    super.initState();
  }

  _selectDate(BuildContext context) async {
    final DateTime? pick = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2022));
    if (pick != null && pick != DateTime.now())
      setState(() {
        selectedDate = pick;
        var date =
            "${pick.toLocal().day}/${pick.toLocal().month}/${pick.toLocal().year}";
        authController.dateController.text = date;
      });
  }

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
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Xác thực thông tin",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.05,
                    ),
                    TextFormField(
                      validator: (value) => Validator.validateName(value ?? ""),
                      controller: authController.firstNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Họ",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      validator: (value) => Validator.validateName(value ?? ""),
                      controller: authController.lastNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Tên",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      controller: authController.dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: "Ngày sinh",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onTap: () async {
                        final selectDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2022));
                        if (selectDate != null) {
                          String fomattedDate =
                              DateFormat('yyyy-MM-dd').format(selectDate);
                          setState(() {
                            authController.dateController.text = fomattedDate;
                          });
                        }
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      validator: (value) =>
                          Validator.validatePhoneNumber(value ?? ""),
                      controller: authController.lastNameController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Số điện thoại",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    TextFormField(
                      validator: (value) => Validator.validateText(value ?? ""),
                      controller: authController.addressController,
                      keyboardType: TextInputType.text,
                      minLines: 1,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Địa chỉ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView())),
                        child: Text(
                          "Đăng kí",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
  }
}
