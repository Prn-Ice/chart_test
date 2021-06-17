import 'package:chart_test/app/modules/home/data/coin_metadata.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'coin_metadata_client.g.dart';

@RestApi()
abstract class CoinMetadataClient {
  factory CoinMetadataClient(Dio dio, {String baseUrl}) = _CoinMetadataClient;

  @GET(
      'coins/{coin}?tickers=false&community_data=false&developer_data=false&sparkline=true')
  Future<CoinMetadata> getCoinData(@Path() String coin);
}
