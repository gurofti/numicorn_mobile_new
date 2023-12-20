import 'package:fl_chart/fl_chart.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';
import 'package:numicorn_mobile/view/main/super/view_model/super_statistics_view_model.dart';
import 'package:numicorn_mobile/view/main/super/widget/super_header_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class SuperStatisticsView extends StatelessWidget {
  const SuperStatisticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SuperStatisticsViewModel>(
      viewModel: SuperStatisticsViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder:
          (BuildContext context, SuperStatisticsViewModel viewModel) =>
              Scaffold(
        backgroundColor: context.appColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: context.height * 0.08),
                  child: Column(
                    children: [
                      SuperHeader(
                        title: "İstatistiklerim",
                        subTitle: "9 Aralık 2023",
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.15,
                          vertical: context.height * 0.04,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildTrueOrFalse(
                              context,
                              title: "DOĞRU",
                              value: 20,
                            ),
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 200,
                              radius: context.width * 0.09,
                              circularStrokeCap: CircularStrokeCap.round,
                              lineWidth: context.width * 0.015,
                              percent: 0.3,
                              progressColor: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              center: Container(
                                child: Text(
                                  "%10",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: context.fontFamily600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            buildTrueOrFalse(
                              context,
                              title: "YANLIŞ",
                              value: 10,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: context.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 22.0,
                        top: 20,
                      ),
                      child: Text(
                        "İlerlemem",
                        style: TextStyle(
                          fontFamily: context.fontFamily600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    LineChartSample5(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, left: 3),
                            child: Text(
                              "Günlük İstatistikler",
                              style: TextStyle(
                                fontFamily: context.fontFamily600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                //border: Border(
                                //  left: BorderSide(
                                //    color: context.appColorLight,
                                //    width: 3,
                                //  ),
                                //),
                                ),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 8,
                              reverse: true,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: context.width,
                                        decoration: BoxDecoration(
                                          color: context.appColor,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        padding: EdgeInsets.all(18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                // color: context.appColor,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight: Radius.circular(15),
                                                ),
                                              ),
                                              child: Text(
                                                "${index + 1} Aralık 2023",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        context.fontFamily700,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            Text(
                                              "Toplam 30 soru çözdün",
                                              style: TextStyle(
                                                fontFamily:
                                                    context.fontFamily600,
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                buildTrueOrFalse(
                                                  context,
                                                  title: "DOĞRU",
                                                  value: 20,
                                                  titleFontSize: 13,
                                                  valueFontSize: 40,
                                                  color: Colors.white,
                                                ),
                                                CircularPercentIndicator(
                                                  animation: true,
                                                  animationDuration: 200,
                                                  radius: context.width * 0.08,
                                                  circularStrokeCap:
                                                      CircularStrokeCap.round,
                                                  lineWidth:
                                                      context.width * 0.012,
                                                  percent: 0.3,
                                                  progressColor: Colors.white,
                                                  backgroundColor: Colors.black
                                                      .withOpacity(0.3),
                                                  center: Container(
                                                    child: Text(
                                                      "%10",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily: context
                                                            .fontFamily600,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                buildTrueOrFalse(
                                                  context,
                                                  title: "YANLIŞ",
                                                  value: 10,
                                                  titleFontSize: 13,
                                                  valueFontSize: 40,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildTrueOrFalse(
    BuildContext context, {
    required String title,
    required int value,
    Color color = Colors.white,
    double titleFontSize = 15.0,
    double valueFontSize = 45.0,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: color,
            fontFamily: context.fontFamily600,
            fontSize: titleFontSize,
            height: 0.2,
          ),
        ),
        Text(
          value.toString(),
          style: TextStyle(
            color: color,
            fontFamily: context.fontFamily600,
            fontSize: valueFontSize,
          ),
        ),
      ],
    );
  }
}

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

class LineChartSample5 extends StatefulWidget {
  LineChartSample5({
    super.key,
    Color? gradientColor1,
    Color? gradientColor2,
    Color? gradientColor3,
    Color? indicatorStrokeColor,
  })  : gradientColor1 = gradientColor1 ?? Color.fromARGB(255, 0, 129, 235),
        gradientColor2 = gradientColor2 ?? Color.fromARGB(255, 7, 16, 195),
        gradientColor3 =
            gradientColor3 ?? const Color.fromARGB(255, 93, 0, 232),
        indicatorStrokeColor = indicatorStrokeColor ?? AppColors.mainTextColor1;

  final Color gradientColor1;
  final Color gradientColor2;
  final Color gradientColor3;
  final Color indicatorStrokeColor;

  @override
  State<LineChartSample5> createState() => _LineChartSample5State();
}

class _LineChartSample5State extends State<LineChartSample5> {
  List<int> showingTooltipOnSpots = [1, 2, 5];

  List<FlSpot> get allSpots => const [
        FlSpot(0, 1),
        FlSpot(1, 2),
        FlSpot(2, 1.5),
        FlSpot(3, 3),
        FlSpot(4, 3.5),
        FlSpot(5, 5),
        FlSpot(6, 8),
      ];

  Widget bottomTitleWidgets(
    double value,
    TitleMeta meta,
    double chartWidth,
  ) {
    final style = TextStyle(
      fontWeight: FontWeight.bold,
      color: context.appColor,
      fontFamily: 'Digital',
      fontSize: 18 * chartWidth / 500,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '00:00';
        break;
      case 1:
        text = '04:00';
        break;
      case 2:
        text = '08:00';
        break;
      case 3:
        text = '12:00';
        break;
      case 4:
        text = '16:00';
        break;
      case 5:
        text = '20:00';
        break;
      case 6:
        text = '23:59';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: true,
        barWidth: 4,
        shadow: const Shadow(
          blurRadius: 0,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              widget.gradientColor1.withOpacity(0.2),
              widget.gradientColor2.withOpacity(0.2),
              widget.gradientColor3.withOpacity(0.2),
            ],
          ),
        ),
        dotData: const FlDotData(show: false),
        gradient: LinearGradient(
          colors: [
            widget.gradientColor1,
            widget.gradientColor2,
            widget.gradientColor3,
          ],
          stops: const [0.1, 0.4, 0.9],
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    return AspectRatio(
      aspectRatio: 2.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return LineChart(
            LineChartData(
              showingTooltipIndicators: showingTooltipOnSpots.map((index) {
                return ShowingTooltipIndicators([
                  LineBarSpot(
                    tooltipsOnBar,
                    lineBarsData.indexOf(tooltipsOnBar),
                    tooltipsOnBar.spots[index],
                  ),
                ]);
              }).toList(),
              lineTouchData: LineTouchData(
                enabled: true,
                handleBuiltInTouches: false,
                touchCallback:
                    (FlTouchEvent event, LineTouchResponse? response) {
                  if (response == null || response.lineBarSpots == null) {
                    return;
                  }
                  if (event is FlTapUpEvent) {
                    final spotIndex = response.lineBarSpots!.first.spotIndex;
                    setState(() {
                      if (showingTooltipOnSpots.contains(spotIndex)) {
                        showingTooltipOnSpots.remove(spotIndex);
                      } else {
                        showingTooltipOnSpots.add(spotIndex);
                      }
                    });
                  }
                },
                mouseCursorResolver:
                    (FlTouchEvent event, LineTouchResponse? response) {
                  if (response == null || response.lineBarSpots == null) {
                    return SystemMouseCursors.basic;
                  }
                  return SystemMouseCursors.click;
                },
                getTouchedSpotIndicator:
                    (LineChartBarData barData, List<int> spotIndexes) {
                  return spotIndexes.map((index) {
                    return TouchedSpotIndicatorData(
                      FlLine(
                        color: context.appColor,
                      ),
                      FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) =>
                            FlDotCirclePainter(
                          radius: 8,
                          color: lerpGradient(
                            barData.gradient!.colors,
                            barData.gradient!.stops!,
                            percent / 100,
                          ),
                          strokeWidth: 2,
                          strokeColor: widget.indicatorStrokeColor,
                        ),
                      ),
                    );
                  }).toList();
                },
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Color(0xff6562F6),
                  tooltipRoundedRadius: 8,
                  getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                    return lineBarsSpot.map((lineBarSpot) {
                      return LineTooltipItem(
                        lineBarSpot.y.toString(),
                        const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }).toList();
                  },
                ),
              ),
              lineBarsData: lineBarsData,
              minY: 0,
              titlesData: FlTitlesData(
                show: false,
                leftTitles: const AxisTitles(
                  axisNameWidget: Text('count'),
                  axisNameSize: 24,
                  sideTitles: SideTitles(
                    showTitles: false,
                    reservedSize: 0,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      return bottomTitleWidgets(
                        value,
                        meta,
                        constraints.maxWidth,
                      );
                    },
                    reservedSize: 30,
                  ),
                ),
                rightTitles: const AxisTitles(
                  axisNameWidget: Text('count'),
                  sideTitles: SideTitles(
                    showTitles: false,
                    reservedSize: 0,
                  ),
                ),
                topTitles: const AxisTitles(
                  axisNameWidget: Text(
                    'Wall clock',
                    textAlign: TextAlign.left,
                  ),
                  axisNameSize: 24,
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 0,
                  ),
                ),
              ),
              gridData: const FlGridData(show: false),
              borderData: FlBorderData(
                show: true,
                border: Border.all(
                  color: context.appBorderColor400,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

/// Lerps between a [LinearGradient] colors, based on [t]
Color lerpGradient(List<Color> colors, List<double> stops, double t) {
  if (colors.isEmpty) {
    throw ArgumentError('"colors" is empty.');
  } else if (colors.length == 1) {
    return colors[0];
  }

  if (stops.length != colors.length) {
    stops = [];

    /// provided gradientColorStops is invalid and we calculate it here
    colors.asMap().forEach((index, color) {
      final percent = 1.0 / (colors.length - 1);
      stops.add(percent * index);
    });
  }

  for (var s = 0; s < stops.length - 1; s++) {
    final leftStop = stops[s];
    final rightStop = stops[s + 1];
    final leftColor = colors[s];
    final rightColor = colors[s + 1];
    if (t <= leftStop) {
      return leftColor;
    } else if (t < rightStop) {
      final sectionT = (t - leftStop) / (rightStop - leftStop);
      return Color.lerp(leftColor, rightColor, sectionT)!;
    }
  }
  return colors.last;
}
