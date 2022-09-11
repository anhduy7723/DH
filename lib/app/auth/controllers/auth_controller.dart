import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late TextEditingController accountTextController;
  late TextEditingController passwordTextController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController phoneNumberController;
  late TextEditingController dateController;

  @override
  void onInit() {
    accountTextController = TextEditingController();
    passwordTextController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    addressController = TextEditingController();
    dateController = TextEditingController();
    super.onInit();
  }
}
