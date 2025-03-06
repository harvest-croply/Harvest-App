import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/field_area_library/widgets/empty_field.dart';
import 'package:harvest_app/ui/views/field_area_library/widgets/field_area_library_card.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:harvest_app/ui/widgets/custom_app_bar.dart';
import 'package:harvest_app/ui/widgets/custom_search_bar.dart';
import 'package:stacked/stacked.dart';

import 'field_area_library_viewmodel.dart';

class FieldAreaLibraryView extends StackedView<FieldAreaLibraryViewModel> {
  const FieldAreaLibraryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FieldAreaLibraryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Field Area Library",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const CustomSearchBar(
                  placeholder: 'Cari nama Field Area',
                ),
                const SizedBox(height: 32),
                viewModel.list == 0
                    ? const EmptyFieldAreaLibraryWidget()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FieldAreaLibraryCard(
                            openBottomSheet: () {
                              viewModel.openEditDeleteBottomSheet();
                            },
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
          text: "+ Tambah Field Area",
          onTap: () {},
        ),
      ),
    );
  }

  @override
  FieldAreaLibraryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FieldAreaLibraryViewModel();
}
