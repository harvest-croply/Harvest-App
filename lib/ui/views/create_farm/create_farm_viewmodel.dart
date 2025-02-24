import 'package:stacked/stacked.dart';

class CreateFarmViewModel extends BaseViewModel {
  int steps = 1;

  nextStep() {
    if (steps == 1) {
      steps = 2;
      rebuildUi();
    } else {}
  }
}
