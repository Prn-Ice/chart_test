import 'package:chart_test/app/modules/home/widgets/chart_copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage("https://i.redd.it/i2byc8qo9l471.jpg"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Obx(() => Text(
              'Coin Chart Test - ${controller.selectedCoin.toUpperCase()}')),
          backgroundColor: Colors.white10,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: controller.obx(
            (state) {
              var map = {"key": "value"};

              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chart2(),
                    ),
                    JsonView.map(state?.toJson() ?? map),
                    SizedBox(height: 20),
                    JsonView.map(state?.market_data.toJson() ?? map),
                    SizedBox(height: 20),
                    JsonView.map(
                      state?.market_data.sparkline_7d.toJson() ??
                          {"key": "${state?.market_data.last_updated}"},
                    ),
                    SizedBox(height: 20),
                    JsonView.map({
                      "key":
                          "${DateFormat.MMMMEEEEd('en').format(DateTime.parse(state?.market_data.last_updated ?? ''))}"
                    }),
                    SizedBox(height: 20),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        textStyle: TextStyle(color: Colors.black),
                        side: BorderSide(
                          color: Colors.deepPurple,
                          width: 3,
                        ),
                        shape: StadiumBorder(),
                      ),
                      onPressed: controller.changeCoin,
                      child: Text(
                        'Change Currency',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            onLoading: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
