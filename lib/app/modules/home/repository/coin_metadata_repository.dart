import 'package:chart_test/app/modules/home/data/coin_metadata.dart';
import 'package:chart_test/app/modules/home/repository/coin_metadata_client.dart';
import 'package:chart_test/app/services/dio_service.dart';
import 'package:chart_test/app/utils/request_utils.dart';
import 'package:get/get.dart';

class CoinMetadataRepository {
  final CoinMetadataClient _client =
      CoinMetadataClient(Get.find<DioService>().dio);

  Future<CoinMetadata> getCoinMetadata(String coinName) {
    return requestAndCheck<CoinMetadata>(
      () => _client.getCoinData(coinName),
    );
  }
}
