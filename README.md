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


 `bash program.sh` diyerek projeyi çalıştırdığımızda .tar,.tar.gz ve boyut öğrenme şeklinde seçenekler karşımıza çıkıyor.            | Sıkıştırmak istediğiniz dosya yolunu aşağıdaki gibi girip dosyanızı başarıyla sıkıştırabilirsiniz.
:-------------------------:|:-------------------------:
![Capture](https://user-images.githubusercontent.com/56317041/149415833-d116b7ff-14df-4682-8238-7f904a04dfb5.PNG)  |  ![Capture](https://user-images.githubusercontent.com/56317041/149416165-05bd0046-40d6-41cb-849c-adc9721f25ec.PNG)

 Yanlış bir yol girmeniz durumunda kontrol edip tekrar giriş yapmaya yönlendirilirsiniz.            |  Oluşturduğunuz dosyanın boyutunu öğrenmek için aynı şekilde dosyanın konumunu verip öğrenebilirsiniz.
:-------------------------:|:-------------------------:
![Capture](https://user-images.githubusercontent.com/56317041/149416661-ea35a43b-ce1b-4b47-9bc7-646fac9c24f4.PNG)  |  ![Capture](https://user-images.githubusercontent.com/56317041/149417394-af102e2c-f234-49fe-ab91-7004b328c5da.PNG)

