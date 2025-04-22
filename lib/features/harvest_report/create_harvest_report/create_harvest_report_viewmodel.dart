import 'package:stacked/stacked.dart';

class CreateHarvestReportViewModel extends BaseViewModel {
  int step = 1;

  nextStep() {
    step = step + 1;
    rebuildUi();
  }
}
