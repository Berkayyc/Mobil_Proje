# Mini Katalog Uygulaması

Bu proje, Flutter Günlük Eğitim kapsamında geliştirilmiş basit fakat profesyonel
bir ürün katalog uygulamasıdır. Uygulama; ürün listeleme, arama/filtreleme,
ürün detayı görüntüleme ve basit bir sepet (state güncelleme) simülasyonu
içerir.

## Kısa Açıklama

Uygulama, [Fake Store API](https://fakestoreapi.com/products) üzerinden ürün
verilerini çekerek ana sayfada **GridView** ile kart tabanlı bir katalog
gösterir. Kullanıcı bir ürüne dokunduğunda **Navigator** ve **Route
Arguments** kullanılarak ürün detay sayfasına yönlendirilir. Detay sayfasında
"Sepete Ekle" butonuyla basit bir state güncelleme simülasyonu yapılır ve
sepetteki ürün sayısı ana sayfadaki sepet ikonunda gösterilir.

### Öğrenilen / Uygulanan Konular
- Stateless / Stateful widget mantığı
- Temel widget'lar: `Text`, `Container`, `Row`, `Column`, `Card`, `GridView`
- `Navigator.push` / `pop`, `MaterialPageRoute`, Named Routes
- Route Arguments ile sayfalar arası veri taşıma
- JSON modelleme: `fromJson` / `toJson` (bkz. `lib/models/product.dart`)
- `http` paketi ile gerçek bir API'den veri çekme
- `FutureBuilder` ile asenkron veri yönetimi
- Basit arama/filtreleme mantığı
- `setState` ile basit sepet (state) güncelleme simülasyonu

## Kullanılan Flutter Sürümü

- Flutter SDK: **3.22+** (Dart SDK >=3.3.0 <4.0.0)
- Bu proje Flutter'ın stabil kanalında test edilmek üzere hazırlanmıştır.
  `flutter --version` komutuyla kendi sürümünüzü kontrol edebilirsiniz.

## Proje Klasör Yapısı

```
mini_katalog/
├── lib/
│   ├── main.dart                       # Uygulama girişi, tema, route'lar
│   ├── models/
│   │   └── product.dart                # Ürün veri modeli (fromJson/toJson)
│   ├── services/
│   │   └── product_service.dart        # Fake Store API çağrıları
│   ├── screens/
│   │   ├── home_screen.dart            # Ana sayfa - ürün listesi (GridView)
│   │   └── product_detail_screen.dart  # Ürün detay sayfası
│   └── widgets/
│       └── product_card.dart           # Tekrar kullanılabilir ürün kartı
├── assets/
│   └── images/                         # (opsiyonel) yerel görseller
├── pubspec.yaml
└── README.md
```

## Çalıştırma Adımları

1. **Flutter SDK'nın kurulu olduğundan emin olun:**
   ```bash
   flutter --version
   ```
   Kurulu değilse [flutter.dev/docs/get-started/install](https://docs.flutter.dev/get-started/install)
   adresinden kurulum yapın.

2. **Proje klasörüne girin:**
   ```bash
   cd mini_katalog
   ```

3. **Bağımlılıkları yükleyin:**
   ```bash
   flutter pub get
   ```

4. **Bir emülatör başlatın veya fiziksel cihaz bağlayın**, ardından
   bağlı cihazları kontrol edin:
   ```bash
   flutter devices
   ```

5. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```

> Not: Uygulama internet bağlantısı gerektirir, çünkü ürün verileri
> [fakestoreapi.com](https://fakestoreapi.com/products) üzerinden canlı
> olarak çekilmektedir.

## Ekran Görüntüleri

Uygulamayı çalıştırdıktan sonra aşağıdaki ekranların görüntülerini bu bölüme
ekleyebilirsiniz:
- Ana sayfa (ürün listesi / GridView)
- Arama / filtreleme
- Ürün detay sayfası
- Sepete ekleme sonrası bildirim

```
screenshots/
├── home_screen.png
├── search.png
├── detail_screen.png
└── add_to_cart.png
```

## Olası Geliştirmeler (Opsiyonel)

- Kategoriye göre filtreleme (`ProductService.fetchProductsByCategory`)
- Sepet sayfasının ayrı bir ekran olarak eklenmesi
- Karanlık tema desteği
- Yerel veri saklama (`shared_preferences` ile sepetin kalıcı hale gelmesi)
