import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UserSettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void back() {
    _navigationService.back();
  }

  void navigateToEditProfile() {
    _navigationService.navigateToEditProfileView();
  }

  void navigateToChangePassword() {
    _navigationService.navigateToChangePasswordView();
  }
}
