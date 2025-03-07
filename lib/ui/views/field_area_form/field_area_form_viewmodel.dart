import 'package:stacked/stacked.dart';

class FieldAreaFormViewModel extends BaseViewModel {
  int step = 1;

  nextStep() {
    step++;
    rebuildUi();
  }
}
