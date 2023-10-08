import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile/app/global/constants/responsive.dart';

class LineChartCard extends StatelessWidget {
  LineChartCard({super.key});

  final List<FlSpot> spots = const [
    FlSpot(0, 7.04),
    FlSpot(1, 5.23),
    FlSpot(2, 7.82),
    FlSpot(3, 4.49),
    FlSpot(4, 6.82),
    FlSpot(5, 8.50),
    FlSpot(6, 4.57),
    FlSpot(7, 8.90),
    FlSpot(8, 3.20),
    FlSpot(9, 7.62),
    FlSpot(10, 4.58),
    FlSpot(11, 6.97),
    FlSpot(12, 7.97),
  ];

  final leftTitle = {
    1: '0',
    2: '1',
    3: '2',
    4: '3',
    5: '4',
    6: '5',
    7: '7',
    8: '8',
    9: '9',
    10: '10',
    11: '11',
    12: '12'
  };
  final bottomTitle = {
    0: '00:00',
    1: '01:00',
    2: '02:00',
    3: '03:00',
    4: '04:00',
    5: '05:00',
    6: '06:00',
    7: '07:00',
    8: '08:00',
    9: '09:00',
    10: '10:00',
    11: '11:00',
    12: '12:00',
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: ThemeData().cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ph",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: Responsive.isMobile(context) ? 9 / 4 : 16 / 6,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(handleBuiltInTouches: true),
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        interval: 1,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  space: 10,
                                  child: Text(
                                      bottomTitle[value.toInt()].toString(),
                                      style: TextStyle(
                                          fontSize: Responsive.isMobile(context)
                                              ? 9
                                              : 12,
                                          color: Colors.grey[400])),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return leftTitle[value.toInt()] != null
                              ? Text(leftTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                      fontSize:
                                          Responsive.isMobile(context) ? 9 : 12,
                                      color: Colors.grey[400]))
                              : const SizedBox();
                        },
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                        isCurved: true,
                        curveSmoothness: 0,
                        color: Theme.of(context).primaryColor,
                        barWidth: 2.5,
                        isStrokeCapRound: true,
                        belowBarData: BarAreaData(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).primaryColor.withOpacity(0.5),
                              Colors.transparent
                            ],
                          ),
                          show: true,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                        ),
                        dotData: FlDotData(show: false),
                        spots: spots)
                  ],
                  minX: 0,
                  maxX: 12,
                  maxY: 14,
                  minY: 0,
                ),
                swapAnimationDuration: const Duration(milliseconds: 1000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
