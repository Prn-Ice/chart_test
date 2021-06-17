import 'package:chart_test/app/modules/home/repository/coin_metadata_repository.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoinMetadataRepository>(() => CoinMetadataRepository());
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find()),
    );
  }
}
