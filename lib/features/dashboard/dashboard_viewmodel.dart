import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
