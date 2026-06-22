Bu klasör, projeye eklemek isteyebileceğiniz yerel görseller (örneğin banner
görseli) için ayrılmıştır.

Eğitim raporunda örnek olarak verilen banner görseli (wantapi.com/assets/banner.png)
gerçek bir kaynak olmadığından, ana sayfadaki banner alanı bu projede
kod içinde (gradient + yazı) olarak tasarlanmıştır.

Kendi bir görselinizi eklemek isterseniz:
1. Görseli bu klasöre (assets/images/) kopyalayın.
2. pubspec.yaml dosyasındaki "assets:" bölümünün yorum satırını kaldırın.
3. lib/screens/home_screen.dart içindeki banner Container'ını
   Image.asset('assets/images/dosya_adi.png') ile değiştirin.
