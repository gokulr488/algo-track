import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/form_field_widget.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/screens/create_company/create_company_controller.dart';
import 'package:flutter/material.dart';

class CreateCompanyScreen extends StatefulWidget {
  const CreateCompanyScreen({super.key});

  @override
  State<CreateCompanyScreen> createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends State<CreateCompanyScreen> {
  final CreateCompanyController ctrl = CreateCompanyController();
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Create Company',
        child: Responsive(
          mobile: Column(
            children: [
              FormFieldWidget(
                  fieldName: 'CompanyName',
                  controller: ctrl.companyNameController),
              FormFieldWidget(
                  fieldName: 'Email Id', controller: ctrl.emailIdController),
              const Spacer(),
              RoundedButton(
                  title: 'Create Company', onPressed: ctrl.onCreateCompany),
              const SizedBox(height: 8)
            ],
          ),
          desktop: web,
        ));
  }
}
