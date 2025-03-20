import 'package:harvest_app/shared/dialogs/info_alert/info_alert_dialog.dart';
import 'package:harvest_app/features/auth/login/login_view.dart';
import 'package:harvest_app/features/auth/register/register_view.dart';
import 'package:harvest_app/features/create_farm/create_farm/create_farm_view.dart';
import 'package:harvest_app/features/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:harvest_app/features/auth/register_email/register_email_view.dart';
import 'package:harvest_app/features/create_farm/search_farm/search_farm_view.dart';
import 'package:harvest_app/features/create_farm/create_farm/confirm_location/confirm_location_view.dart';
import 'package:harvest_app/features/dashboard/dashboard_view.dart';
import 'package:harvest_app/features/field_area/field_area_library/field_area_library_view.dart';
import 'package:harvest_app/shared/bottom_sheets/edit_delete_field_area/edit_delete_field_area_sheet.dart';
import 'package:harvest_app/features/field_area/field_area_form/field_area_form_view.dart';
import 'package:harvest_app/features/harvest_report/harvest_report_list/harvest_report_view.dart';
import 'package:harvest_app/features/harvest_report/create_harvest_report/create_harvest_report_view.dart';
import 'package:harvest_app/shared/bottom_sheets/edit_delete_farm/edit_delete_farm_sheet.dart';
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
    MaterialRoute(page: FieldAreaFormView),
    MaterialRoute(page: HarvestReportView),
    MaterialRoute(page: CreateHarvestReportView),
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
    StackedBottomsheet(classType: EditDeleteFarmSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
