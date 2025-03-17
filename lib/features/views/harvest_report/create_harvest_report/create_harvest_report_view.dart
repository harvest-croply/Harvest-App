import 'package:flutter/material.dart';
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
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("CreateHarvestReportView")),
      ),
    );
  }

  @override
  CreateHarvestReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateHarvestReportViewModel();
}
