import 'dart:developer';
import 'dart:math' as math;

import 'package:chart_test/app/modules/home/controllers/home_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:supercharged/supercharged.dart';
import 'package:bisect/bisect.dart';

class Chart2 extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 200,
      child: controller.obx(
        (state) {
          List<double> getPrices() =>
              state?.market_data.sparkline_7d.price ?? [];

          double getMax() => getPrices().max() ?? 0;

          double getMin() => getPrices().min() ?? 0;

          double getDiff() => getMax() - getMin();

          log('bestTick: ${bestTick(getMax() - getMin(), 10).toString()}');
          log('bisectTick: ${bisectTick(getMax() - getMin(), 10).toString()}');
          log('myManAlgorithm: ${myManAlgorithm(getMax(), getMin())}');

          return LineChart(
            LineChartData(
              /* gridData: FlGridData(
                drawVerticalLine: true,
                verticalInterval: 24,
                // horizontalInterval: buildCeilToDouble(),
                horizontalInterval: bisectTick(getDiff(), 10),
              ), */
              titlesData: FlTitlesData(
                leftTitles: SideTitles(
                  showTitles: true,
                  interval: bisectTick(getDiff(), 10),
                  reservedSize: 40,
                ),
                bottomTitles: SideTitles(showTitles: true, interval: 24),
              ),
              lineBarsData: [
                LineChartBarData(
                  isStepLineChart: false,
                  isStrokeCapRound: true,
                  show: true,
                  spots: [
                    for (var i = 0; i < getPrices().length; i++)
                      FlSpot(i.toDouble(), getPrices()[i]),
                  ],
                  isCurved: true,
                  barWidth: 2,
                  colors: [
                    Colors.blue,
                  ],
                  dotData: FlDotData(
                    show: false,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

double myManAlgorithm(double max, double min) {
  var range = max - min;
  var exponent = log10(range).floor();
  var magnitude = math.pow(10, exponent);
  // var value_per_division = magnitude / 10;
  return magnitude.toDouble();
}

double bestTick(double range, int mostTicks) {
  try {
    var minimum = range / mostTicks;
    var magnitude = math.pow(10, log10(minimum).floor());
    var residual = minimum / magnitude;
    late var tick;
    if (residual > 5) {
      tick = 10 * magnitude;
    } else if (residual > 2) {
      tick = 5 * magnitude;
    } else if (residual > 1) {
      tick = 2 * magnitude;
    } else {
      tick = magnitude;
    }
    return double.tryParse(tick.toString()) ?? 0;
  } on Exception catch (e) {
    print(e);
    return 0;
  }
}

double bisectTick(range, mostTicks) {
  try {
    var minimum = range / mostTicks;
    var magnitude = math.pow(10, log10(minimum).floor());
    num residual = minimum / magnitude;

    /// this table must begin with 1 and end with 10
    // var table = [1, 1.5, 2, 3, 5, 7, 10];
    var table = [1, 2, 2.5, 3, 5, 7, 7.5, 10];
    late var tick;
    if (residual < 10) {
      tick = table.bisectRight(residual);
    } else {
      tick = 10;
    }
    // var tick = table.bisectRight(residual)

    return double.tryParse((tick * magnitude).toString()) ?? 0;
  } on Exception catch (e) {
    print(e);
    return 0;
  }
}

double log10(num x) => math.log(x) / math.ln10;
