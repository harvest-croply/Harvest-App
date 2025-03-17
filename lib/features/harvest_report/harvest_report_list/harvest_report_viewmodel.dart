import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HarvestReportViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List reportList = [];

  createHarvestReport() {
    _navigationService.navigateToCreateHarvestReportView();
  }
}
