# dart_kenall 🦈

Unofficial kenall ([ケンオール](https://kenall.jp)) client written by Dart.

Kenall is the useful Japanese postal code API service.

The official document is [here](https://kenall.jp/docs).

"ken" means "prefecture" in Japanese. 🗾

**🚨 IMPORTANT**: Package is ***unofficial***. It may not support the latest API. 

Recommended that you use it for simple applications.

## Support APIs

- [ ] `GET /v1/download/postalcode`
- [x] `GET /v1/postalcode/{郵便番号}`
- [x] `GET /postalcode/?q=...&offset=...&limit=...&facet=...`
- [x] `GET /cities/:都道府県コード`
- [x] `GET /whoami`

## Usage

### Client

```dart
import 'package:dart_kenall/dart_kenall.dart';

Future<void> main() async {
  final config = Config(
    apiKey: 'KENALL_API_KEY',
  );
  final kenallClient = KenallClient(config, http.Client());
  final response = await kenallClient.getCities(
    prefectureCode: prefectureCode['東京都']!,
  );
  print(response.cities[0].toJson());
  // => {jisx0402: 13101, prefecture_code: 13, city_code: 101, prefecture_kana: トウキョウト, city_kana: チヨダク, prefecture: 東京都, city: 千代田区}
}
```

### CLI

```console
$> export KENALL_API_KEY=YOUR_API_KEY
$> kenall-cli get postalcode --code=1500001
send request to https://api.kenall.jp/v1/postalcode/1500001
city count: 1
address: {jisx0402: 13113, old_code: 150, postal_code: 1500001, prefecture: 東京都, prefecture_kana: トウキョウト, city: 渋谷区, city_kana: シブヤク, town: 神宮前, town_kana: ジングウマエ, town_raw: 神宮前, town_kana_raw: ジングウマエ, koaza: , kyoto_street: , building: , floor: , town_partial: false, town_addressed_koaza: false, town_multi: false, town_chome: true, corporation: null}
```

### Flutter

Example app is [here]().



## License

[MIT License]().