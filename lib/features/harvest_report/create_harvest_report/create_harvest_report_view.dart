import 'package:flutter/material.dart';
import 'package:harvest_app/features/harvest_report/create_harvest_report/widgets/step_one.dart';
import 'package:harvest_app/features/harvest_report/create_harvest_report/widgets/step_three.dart';
import 'package:harvest_app/features/harvest_report/create_harvest_report/widgets/step_two.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'create_harvest_report_viewmodel.dart';

class CreateHarvestReportView
    extends StackedView<CreateHarvestReportViewModel> {
  const CreateHarvestReportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateHarvestReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: CustomAppBar(title: "Buat Laporan Panen"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: viewModel.step == 1
                ? const StepOne()
                : viewModel.step == 2
                    ? const StepTwo()
                    : const StepThree(),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
          text: viewModel.step != 3 ? 'Selanjutnya' : "Simpan",
          onTap: () {
            viewModel.nextStep();
          },
        ),
      ),
    );
  }

  @override
  CreateHarvestReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateHarvestReportViewModel();
}
