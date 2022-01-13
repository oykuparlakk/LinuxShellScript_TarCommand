# Linux Shell Script - Tar Komutu  <br/><br/>
## Tar Komutu Nedir?
Tar komutunun açılımı **Tape Archive** dir.Bir veya daha fazla dosyanın sıkıştırılması için kullanılır.Çoğu durumda tar komutuyla sıkıştırılma yapıldıktan sonra .tar uzantılı dosya oluşur. Daha ileri sıkıştırma ise gzip kullanılarak yapılır. Sonuç olarak .tar.gz uzantılı dosya oluşur.
## Tar Komutu Parametreleri
**-c** Create: tar dosyasının yaratılacağını belirtir.

**-x** Extract: bir tar dosyasının açılacağını belirtir.

**-t** Tabel of contents: bir tar dosyasının iceriğinin listeleneceğini belirtir.

**-v** Verbose: bir tar dosyasının yaratılırken ya da açılırken elden geçen dosyaların isimlerini ekrana listelemek icin kullanılır.

**-z** tar dosyasinin sıkıştırılmış bir dosya olarak kullanılacağını belirtir.Gunzip kullanılacaktır.

**-f** File: yaratılacak,açılacak ya da içindekiler tablosu listelenecek tar dosyasının adının komut satırında verileceğini belirtir.

## Gerekli Kurulumlar
- Terminali açtığınızda `sudo apt-get install whiptail` yazarak whiptail kurulumu yapmalısınız.
- Projeyi yazarken nano editör kullandım. İsterseniz `sudo apt-get install nano` diyerek sizde kurabilirsiniz.
- Projeyi indirdikten sonra `nano program.sh` yazarak kodu inceleyebilirsiniz. Whiptail kullanarak hazırlamış olduğum UI'ı incelemek isterseniz `bash program.sh` yazabilirsiniz.
## Uygulamanın Amacı
Kullanıcı tarafından girilen dosya yolunu alarak dosyaları `.tar` ve `tar.gz` formatına dönüştürür. Sıkıştırılmış olan bu dosyaların boyutunu ekrana yazdırır.
## Nasıl Kullanılır?
