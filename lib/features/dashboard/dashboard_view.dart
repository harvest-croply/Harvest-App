import 'package:flutter/material.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/features/dashboard/widgets/dashboard_card.dart';
import 'package:harvest_app/features/dashboard/widgets/drawer.dart';
import 'package:harvest_app/features/dashboard/widgets/header.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  DashboardView({Key? key}) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: CustomColors.primeGreen30,
        elevation: 0,
      ),
      drawer: const Drawer(
        child: DashboardDrawer(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const DashboardHeader(),
            Stack(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: CustomColors.primeGreen30,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                ),
                Column(
                  children: [
                    DashboardCard(
                      title: 'Field Area Created',
                      subTitle: '4',
                      image: AssetsImages.market,
                      onTap: () {
                        _navigationService.navigateToFieldAreaLibraryView();
                      },
                    ),
                    DashboardCard(
                      title: 'Harvest Report Created',
                      subTitle: '2',
                      image: AssetsImages.market,
                      onTap: () {
                        _navigationService.navigateToHarvestReportView();
                      },
                    ),
                    DashboardCard(
                      title: 'See Harvest Report Data',
                      subTitle: 'Harvest Data Chart',
                      image: AssetsImages.market,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}
