import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/features/create_farm/search_farm/widgets/search_area_card.dart';
import 'package:harvest_app/shared/widgets/custom_search_bar.dart';
import 'package:stacked/stacked.dart';

import 'search_farm_viewmodel.dart';

class SearchFarmView extends StackedView<SearchFarmViewModel> {
  const SearchFarmView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchFarmViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        toolbarHeight: 76,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 1,
        leadingWidth: 28,
        iconTheme: IconThemeData(color: CustomColors.neutral40),
        title: const CustomSearchBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Hasil Pencarian",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (BuildContext context, int int) {
                  return SearchAreaCard();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  SearchFarmViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchFarmViewModel();
}
