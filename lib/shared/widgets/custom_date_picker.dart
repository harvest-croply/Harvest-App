import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key, this.restorationId});

  final String? restorationId;
  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker>
    with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime.now());
  final RestorableDateTimeN _endDate = RestorableDateTimeN(DateTime.now());
  late final RestorableRouteFuture<DateTimeRange?>
      _restorableDateRangePickerRouteFuture =
      RestorableRouteFuture<DateTimeRange?>(
    onComplete: _selectDateRange,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _dateRangePickerRoute,
        arguments: <String, dynamic>{},
      );
    },
  );

  void _selectDateRange(DateTimeRange? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _startDate.value = newSelectedDate.start;
        _endDate.value = newSelectedDate.end;
      });
    }
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_startDate, 'start_date');
    registerForRestoration(_endDate, 'end_date');
    registerForRestoration(
        _restorableDateRangePickerRouteFuture, 'date_picker_route_future');
  }

  @pragma('vm:entry-point')
  static Route<DateTimeRange?> _dateRangePickerRoute(
      BuildContext context, Object? arguments) {
    return DialogRoute<DateTimeRange?>(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 6),
          child: DateRangePickerDialog(
            restorationId: 'date_picker_dialog',
            initialDateRange:
                _initialDateTimeRange(arguments! as Map<dynamic, dynamic>),
            firstDate: DateTime(DateTime.now().year),
            currentDate: DateTime.now(),
            lastDate: DateTime(2100),
            initialEntryMode: DatePickerEntryMode.calendarOnly,
          ),
        );
      },
    );
  }

  static DateTimeRange? _initialDateTimeRange(Map<dynamic, dynamic> arguments) {
    if (arguments['initialStartDate'] != null &&
        arguments['initialEndDate'] != null) {
      return DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialStartDate'] as int),
        end: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialEndDate'] as int),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _restorableDateRangePickerRouteFuture.present();
      },
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.surface10,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AssetsIcons.calendar,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  "Filter berdasarkan tanggal",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: CustomColors.neutral30,
                      ),
                ),
              ],
            ),
            SvgPicture.asset(
              AssetsIcons.chevronDown,
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
