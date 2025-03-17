import 'package:flutter/material.dart';
import 'package:harvest_app/features/views/harvest_report/harvest_report_list/widgets/harvest_report_card.dart';
import 'package:harvest_app/features/widgets/custom_date_picker.dart';

class ReportListWidget extends StatelessWidget {
  const ReportListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        CustomDatePicker(),
        SizedBox(height: 32),
        HarvestReportCard(),
        HarvestReportCard(),
        HarvestReportCard(),
      ],
    );
  }
}
