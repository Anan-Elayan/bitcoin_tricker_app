import 'networking.dart';

const apiKey = 'e9e2a39f-faae-4c43-a357-83add7a12f8f';
const coinConvertingMapURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinModel {
  Future<dynamic> getCoin(String quote) async {
    try {
      NetworkHelper networkHelper =
          NetworkHelper('$coinConvertingMapURL/BTC/$quote?apikey=$apiKey');
      var coinData = await networkHelper.getDate();
      return coinData;
    } catch (e) {
      print('Error getting coin: $e');
      return null;
    }
  }

  Future<dynamic> getETHCoin(String quote) async {
    try {
      NetworkHelper networkHelper =
          NetworkHelper('$coinConvertingMapURL/ETH/$quote?apikey=$apiKey');
      var coinData = await networkHelper.getDate();
      return coinData;
    } catch (e) {
      print('Error getting coin: $e');
      return null;
    }
  }

  Future<dynamic> getLTCCoin(String quote) async {
    try {
      NetworkHelper networkHelper =
          NetworkHelper('$coinConvertingMapURL/LTC/$quote?apikey=$apiKey');
      var coinData = await networkHelper.getDate();
      return coinData;
    } catch (e) {
      print('Error getting coin: $e');
      return null;
    }
  }
}
