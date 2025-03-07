import 'package:flutter/material.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/ui/widgets/custom_app_bar.dart';
import 'package:harvest_app/ui/widgets/custom_stepper.dart';
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
              const CustomStepper(count: 3),
              const SizedBox(height: 16),
              Image.asset(
                AssetsImages.gardeningIlusstration,
                height: 170,
              ),
              const SizedBox(height: 8),
              const Text("Buat Field Area Untuk Kebunmu"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  FieldAreaFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FieldAreaFormViewModel();
}
