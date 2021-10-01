# dart_kenall 🦈

[![CI](https://github.com/yamarkz/dart_kenall/actions/workflows/actions.yaml/badge.svg)](https://github.com/yamarkz/dart_kenall/actions/workflows/actions.yaml)
[![likes](https://badges.bar/dart_kenall/likes)](https://pub.dev/packages/dart_kenall/score)
[![popularity](https://badges.bar/dart_kenall/popularity)](https://pub.dev/packages/dart_kenall/score)
[![pub points](https://badges.bar/dart_kenall/pub%20points)](https://pub.dev/packages/dart_kenall/score)

Unofficial kenall ([ケンオール](https://kenall.jp)) client written by Dart.

Kenall is the useful Japanese postal code API service.

The official document is [here](https://kenall.jp/docs).

"ken" means "prefecture" in Japanese. 🗾

**🚨 IMPORTANT**: Package is ***unofficial***. It may not support the latest API. 

Recommended that you use it for simple applications.

## Support APIs

- [ ] `GET /v1/download/postalcode`
- [x] `GET /v1/postalcode/{郵便番号}`
- [x] `GET /v1/postalcode/?q=...&offset=...&limit=...&facet=...`
- [x] `GET /v1/cities/:都道府県コード`
- [x] `GET /v1/whoami`
- [x] `GET /v1/houjinbangou/{法人番号}`
- [x] `GET /v1/houjinbangou/?q=...&offset=...&limit=...&facet=...`

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

Example app is [here](https://github.com/yamarkz/kenall_example_flutter).

| Get Address  |  Search Address  | Get City |
| ---- | ---- | ---- |
| <img src="https://user-images.githubusercontent.com/12509392/128193779-699bee88-9c82-42c7-866e-8febb98dac00.png" width="270"> |  <img src="https://user-images.githubusercontent.com/12509392/128194006-0fe17637-2d00-4a8a-859a-e7b500ec0082.png" width="270">  | <img src="https://user-images.githubusercontent.com/12509392/128195236-6b601c2c-accb-4568-a4a6-b160ec141c47.png" width="270">  |

## License

[MIT License](https://github.com/yamarkz/dart_kenall/blob/main/LICENSE).