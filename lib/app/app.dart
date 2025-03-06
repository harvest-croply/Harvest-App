import 'package:harvest_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:harvest_app/ui/views/auth/login/login_view.dart';
import 'package:harvest_app/ui/views/auth/register/register_view.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/create_farm_view.dart';
import 'package:harvest_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:harvest_app/ui/views/auth/register_email/register_email_view.dart';
import 'package:harvest_app/ui/views/create_farm/search_farm/search_farm_view.dart';
import 'package:harvest_app/ui/views/create_farm/create_farm/confirm_location/confirm_location_view.dart';
import 'package:harvest_app/ui/views/dashboard/dashboard_view.dart';
import 'package:harvest_app/ui/views/field_area_library/field_area_library_view.dart';
import 'package:harvest_app/ui/bottom_sheets/edit_delete_field_area/edit_delete_field_area_sheet.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: RegisterEmailView),
    MaterialRoute(page: CreateFarmView),
    MaterialRoute(page: SearchFarmView),
    MaterialRoute(page: ConfirmLocationView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: FieldAreaLibraryView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: EditDeleteFieldAreaSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
