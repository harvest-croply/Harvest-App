import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/ui/views/field_area_form/widgets/step_one.dart';
import 'package:harvest_app/ui/views/field_area_form/widgets/step_three.dart';
import 'package:harvest_app/ui/views/field_area_form/widgets/step_two.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:harvest_app/ui/widgets/custom_app_bar.dart';
import 'package:harvest_app/ui/widgets/custom_stepper.dart';
import 'package:harvest_app/ui/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import 'field_area_form_viewmodel.dart';

class FieldAreaFormView extends StackedView<FieldAreaFormViewModel> {
  const FieldAreaFormView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FieldAreaFormViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tambah Field Area'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomStepper(
                count: 3,
                currentStep: viewModel.step,
              ),
              const SizedBox(height: 16),
              buildForm(viewModel.step),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
            text: "Selanjutnya",
            onTap: () {
              viewModel.nextStep();
            }),
      ),
    );
  }

  Widget buildForm(int step) {
    switch (step) {
      case 1:
        return const FieldAreaFormStepOne();
      case 2:
        return const FieldAreaFormStepTwo();
      case 3:
        return const FieldAreaFormStepThree();
      default:
        return Container();
    }
  }

  @override
  FieldAreaFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FieldAreaFormViewModel();
}
