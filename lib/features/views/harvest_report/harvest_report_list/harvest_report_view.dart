import 'package:flutter/material.dart';
import 'package:harvest_app/features/views/harvest_report/harvest_report_list/widgets/empty_report.dart';
import 'package:harvest_app/features/views/harvest_report/harvest_report_list/widgets/report_list.dart';
import 'package:harvest_app/features/widgets/action_button.dart';
import 'package:harvest_app/features/widgets/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'harvest_report_viewmodel.dart';

class HarvestReportView extends StackedView<HarvestReportViewModel> {
  const HarvestReportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HarvestReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: CustomAppBar(title: "Laporan Panen"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: viewModel.reportList.isEmpty
              ? const EmptyReportWidget()
              : const ReportListWidget(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
          text: "+ Buat Laporan Panen",
          onTap: () {
            viewModel.createHarvestReport();
          },
        ),
      ),
    );
  }

  @override
  HarvestReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HarvestReportViewModel();
}
