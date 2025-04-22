import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/features/dashboard/widgets/empty_report_dashboard.dart';
import 'package:harvest_app/features/dashboard/widgets/report_dashboard_chart.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Harvest Report Dashboard',
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  indicatorWeight: 3,
                  indicatorColor: CustomColors.primeGreen30,
                  labelColor: CustomColors.primeGreen30,
                  unselectedLabelColor: CustomColors.neutral30,
                  tabs: const [
                    Tab(
                      text: 'Crop',
                    ),
                    Tab(
                      text: "Field Area",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: viewModel.isReportDashboardEmpty
                            ? const EmptyReportDashboard()
                            : ReportDashboardChart(),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: viewModel.isReportDashboardEmpty
                            ? const EmptyReportDashboard()
                            : ReportDashboardChart(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
