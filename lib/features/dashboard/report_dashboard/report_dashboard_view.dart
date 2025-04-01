import 'package:flutter/material.dart';
import 'package:harvest_app/features/dashboard/widgets/empty_report_dashboard.dart';
import 'package:harvest_app/shared/widgets/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'report_dashboard_viewmodel.dart';

class ReportDashboardView extends StackedView<ReportDashboardViewModel> {
  const ReportDashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ReportDashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Harvest Report Dashboard'),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const EmptyReportDashboard(),
          ),
        ),
      ),
    );
  }

  @override
  ReportDashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReportDashboardViewModel();
}
