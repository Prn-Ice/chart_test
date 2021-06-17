import 'package:chart_test/app/modules/home/data/coin_metadata.dart';
import 'package:chart_test/app/modules/home/repository/coin_metadata_repository.dart';
import 'package:get/get.dart';

class HomeController extends SuperController<CoinMetadata> {
  final CoinMetadataRepository repository;

  HomeController(this.repository);

  @override
  Future<void> onInit() async {
    super.onInit();

    //Loading, Success, Error handle with 1 line of code
    // var val = await repository.getCoinMetadata('uniswap');
    append(() => () => repository.getCoinMetadata(selectedCoin.value));
  }

  List<String> get coins => ['bitcoin', 'litecoin', 'uniswap', 'dogecoin'];

  RxString selectedCoin = RxString('bitcoin');

  int selectedCoinIndex = 0;

  void changeCoin() {
    selectedCoinIndex = (selectedCoinIndex + 1) % coins.length;
    selectedCoin.value = coins[selectedCoinIndex];
    append(() => () => repository.getCoinMetadata(selectedCoin.value));
  }

  @override
  void onReady() {
    print('The build method is done. '
        'Your controller is ready to call dialogs and snackbars');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }

  @override
  void didChangeMetrics() {
    print('the window size did change');
    super.didChangeMetrics();
  }

  @override
  void didChangePlatformBrightness() {
    print('platform change ThemeMode');
    super.didChangePlatformBrightness();
  }

  @override
  Future<bool> didPushRoute(String route) {
    print('the route $route will be open');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    print('the current route will be closed');
    return super.didPopRoute();
  }

  @override
  void onDetached() {
    print('onDetached called');
  }

  @override
  void onInactive() {
    print('onInative called');
  }

  @override
  void onPaused() {
    print('onPaused called');
  }

  @override
  void onResumed() {
    print('onResumed called');
  }
}
