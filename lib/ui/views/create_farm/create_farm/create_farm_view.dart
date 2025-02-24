import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/widgets/create_farm_form.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/widgets/create_farm_header.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/widgets/create_farm_map.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:stacked/stacked.dart';

import 'create_farm_viewmodel.dart';

class CreateFarmView extends StackedView<CreateFarmViewModel> {
  const CreateFarmView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateFarmViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CreateFarmHeader(),
              viewModel.steps == 1
                  ? const CreateFarmForm()
                  : const CreateFarmMap(),
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
          },
        ),
      ),
    );
  }

  @override
  CreateFarmViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateFarmViewModel();
}
