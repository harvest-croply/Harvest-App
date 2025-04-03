import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class ReportDashboardChart extends StatelessWidget {
  ReportDashboardChart({super.key});

  final List datas = [
    [200, 400, 500],
    [250, 350, 400],
    [175, 250, 300],
    [200, 350, 375],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Crop Chart",
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CustomColors.neutral50,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            filterDropdown('Semua Field Area', ''),
            const SizedBox(width: 8),
            filterDropdown('Date', AssetsIcons.calender),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            dashboardLabel('Navel', CustomColors.primeGreen30),
            dashboardLabel('Mandarin', CustomColors.primeOrange30),
            dashboardLabel('Jewel', CustomColors.harvestBlue30),
          ],
        ),
        const SizedBox(height: 16),
        dashboardChart(datas),
      ],
    );
  }
}

Widget filterDropdown(String text, String? icon) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: CustomColors.slate200,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != '')
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SvgPicture.asset(
                    icon!,
                    width: 12,
                    height: 12,
                    color: CustomColors.neutral800,
                  ),
                ),
              Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.neutral800,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            AssetsIcons.chevronDown,
            width: 12,
            height: 12,
            color: CustomColors.neutral800,
          ),
        ],
      ),
    ),
  );
}

Widget dashboardLabel(String text, Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    ),
  );
}

Widget barChartWidget(List data) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 42,
                    height: data[2] / 500 * 226,
                    decoration: BoxDecoration(
                      color: CustomColors.harvestBlue30,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: data[1] / 500 * 226,
                    decoration: BoxDecoration(
                      color: CustomColors.primeGreen30,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: data[0] / 500 * 226,
                    decoration: BoxDecoration(
                      color: CustomColors.primeOrange30,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget dashboardChart(List datas) {
  return SizedBox(
    height: 250,
    child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "500 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                    Text(
                      "400 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                    Text(
                      "300 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                    Text(
                      "200 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                    Text(
                      "100 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                    Text(
                      "0 Kg",
                      style: TextThemeConstants.body4
                          .copyWith(color: CustomColors.neutral50),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Stack(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DasshedLine(),
                        DasshedLine(),
                        DasshedLine(),
                        DasshedLine(),
                        DasshedLine(),
                        DasshedLine(),
                      ],
                    ),
                    Row(
                      children: [
                        for (var data in datas) barChartWidget(data),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 58,
              height: 30,
            ),
            Expanded(
              child: Row(
                children: [
                  labelX('Field 1'),
                  labelX('Field 2'),
                  labelX('Field 3'),
                  labelX('Field 4'),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget labelX(String text) {
  return Expanded(
    child: Center(
      child: Text(
        text,
        style: TextThemeConstants.body4.copyWith(color: CustomColors.neutral40),
      ),
    ),
  );
}

class DasshedLine extends StatelessWidget {
  const DasshedLine({Key? key, this.height = 1}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          const dashWidth = 10.0;
          final dashHeight = height;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: CustomColors.neutral30),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
