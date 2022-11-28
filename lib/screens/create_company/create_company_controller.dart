import 'package:algo_track/models/company.dart';
import 'package:flutter/material.dart';

class CreateCompanyController {
  final companyNameController = TextEditingController();
  final emailIdController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  void onCreateCompany() {
    Company company = Company(
        companyName: companyNameController.text,
        emailId: emailIdController.text,
        password: passwordController.text);
  }
}
