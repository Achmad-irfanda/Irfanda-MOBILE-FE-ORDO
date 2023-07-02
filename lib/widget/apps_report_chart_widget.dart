// apps report chart widget

import 'package:intl/intl.dart';
import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class ReportChartWidget extends StatefulWidget {
  const ReportChartWidget({super.key});

  @override
  State<ReportChartWidget> createState() => _ReportChartWidgetState();
}

class _ReportChartWidgetState extends State<ReportChartWidget> {
  List<Color> gradientColors = [
    grad,
    mainPurple,
  ];
  bool showAvg = false;
  double minX = 1;
  double maxX = 13;
  double minY = 160000;
  double maxY = 300000;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(right: 100),
                child: SizedBox(
                  height: 240,
                  width: mediaQuery.width,
                  child: LineChart(LineChartData(
                    lineTouchData: LineTouchData(
                      enabled: true,
                      touchTooltipData: LineTouchTooltipData(
                        tooltipBgColor: black.withOpacity(0.80),
                        tooltipRoundedRadius: 8.0,
                        showOnTopOfTheChartBoxArea: false,
                        fitInsideHorizontally: true,
                        tooltipMargin: 0,
                        getTooltipItems: (touchedSpots) {
                          return touchedSpots.map(
                            (LineBarSpot touchedSpot) {
                              const textStyle = TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              );
                              return LineTooltipItem(
                                NumberFormat.currency(
                                  symbol: 'Rp ',
                                  decimalDigits: 0,
                                  locale: 'id',
                                ).format(
                                  PublicModel.flData[touchedSpot.spotIndex].y,
                                ),
                                textStyle,
                              );
                            },
                          ).toList();
                        },
                      ),
                      getTouchedSpotIndicator:
                          (LineChartBarData barData, List<int> indicators) {
                        return indicators.map(
                          (int index) {
                            final line = FlLine(
                              color: white,
                              strokeWidth: 1,
                            );
                            return TouchedSpotIndicatorData(
                              line,
                              const FlDotData(show: true),
                            );
                          },
                        ).toList();
                      },
                    ),
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: true,
                      horizontalInterval: 1,
                      verticalInterval: 1,
                      getDrawingVerticalLine: (value) {
                        return const FlLine(
                          color: Colors.transparent,
                          strokeWidth: 0,
                        );
                      },
                      getDrawingHorizontalLine: (value) {
                        return const FlLine(
                          color: Colors.transparent,
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          interval: 1,
                          getTitlesWidget: bottomTitleWidgets,
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    minX: minX,
                    maxX: maxX,
                    minY: minY,
                    maxY: maxY,
                    lineBarsData: [
                      LineChartBarData(
                        spots: PublicModel.flData,
                        isCurved: true,
                        barWidth: 3,
                        color: white,
                        isStrokeCapRound: true,
                        dotData: const FlDotData(
                          show: true,
                        ),
                        belowBarData: BarAreaData(
                          color: Colors.transparent,
                          show: true,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: gradientColors
                                .map((color) => color.withOpacity(0.9))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  )),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  sliderContainer(grey2, 30.0),
                  const SizedBox(
                    width: 5,
                  ),
                  sliderContainer(white, 30.0),
                  const SizedBox(
                    width: 5,
                  ),
                  sliderContainer(grey2, 30.0),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: 0,
            right: 15,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: white,
                  size: 18,
                ))),
        Positioned(
          left: 26,
          top: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total revenue",
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w300, color: white),
              ),
              textCurrency(
                  257000000,
                  TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 19, color: white)),
            ],
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style =
        TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: white);
    Widget text;
    switch (value.toInt()) {
      case 3:
        text = Text('Mon', style: style);
        break;
      case 5:
        text = Text('Tue', style: style);
        break;
      case 7:
        text = Text('Wed', style: style);
        break;
      case 9:
        text = Text('Thu', style: style);
        break;
      case 11:
        text = Text('Fri', style: style);
        break;
      case 13:
        text = Text('Sat', style: style);
        break;
      case 15:
        text = Text('Sun', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
