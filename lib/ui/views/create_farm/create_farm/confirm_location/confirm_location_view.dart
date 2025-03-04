import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/confirm_location/widgets/bottom_widget.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/confirm_location/widgets/map_background_widget.dart';
import 'package:stacked/stacked.dart';

import 'confirm_location_viewmodel.dart';

class ConfirmLocationView extends StackedView<ConfirmLocationViewModel> {
  const ConfirmLocationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConfirmLocationViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MapBackground(),
            ConfirmLocationBottomWidget(),
          ],
        ),
      ),
    );
  }

  @override
  ConfirmLocationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConfirmLocationViewModel();
}
