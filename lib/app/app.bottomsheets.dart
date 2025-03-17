// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../shared/bottom_sheets/edit_delete_field_area/edit_delete_field_area_sheet.dart';

enum BottomSheetType {
  editDeleteFieldArea,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.editDeleteFieldArea: (context, request, completer) =>
        EditDeleteFieldAreaSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
