import 'package:harvest_app/app/app.bottomsheets.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FieldAreaLibraryViewModel extends BaseViewModel {
  int list = 1;

  final _bottomSheetService = locator<BottomSheetService>();

  openEditDeleteBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.editDeleteFieldArea,
      title: 'Field Area 1',
    );
  }
}
