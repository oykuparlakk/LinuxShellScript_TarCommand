#!/bin/bash

function Tarolustur () {
p=$(whiptail --nocancel --inputbox "Sıkıştırmak istediğiniz dosya yolunu giriniz:" 10 100 3>&1 1>&2 2>&3)
echo "dosyayolu: $p"
part1=$(dirname "$p")
part2=$(basename "$p")

echo "$part1"
echo "$part2"

echo tar -czvf $part2.tar $p

FILE=$part2.tar
if [ -f "$FILE" ]; then


whiptail --fb  --msgbox --title "Dosya Oluşturuldu" "Tar dosyası oluşturuldu lütfen kontrol ediniz.." 15 50

else
whiptail --fb --msgbox --title "Dosya oluşturulamadı" "Dosyanın konumunu kontrol ediniz.." 15 50

islemler 
fi

}
function Targzolustur () {
p=$(whiptail --nocancel --inputbox "tar.gz formatında istediğiniz dosya yolunu giriniz:" 10 100 3>&1 1>&2 2>&3)
echo "dosyayolu: $p"

part1=$(dirname "$p")
part2=$(basename "$p")

echo "$part1"
echo "$part2"

echo tar -cvzf $part2.tar.gz $p

FILE=$part2.tar.gz
if [ -f "$FILE" ]; then


whiptail --fb  --msgbox --title "Dosya Oluşturuldu" "Tar.gz dosyası oluşturuldu lütfen kontrol ediniz.." 15 50

else
whiptail --fb --msgbox --title "Dosya oluşturulamadı" "Dosyanın konumunu kontrol ediniz.." 15 50

islemler 
fi


}

function boyutogren () {

p=$(whiptail --nocancel --inputbox "Boyutunu öğrenmek isteğiniz arşiv dosyasının yolunu giriniz.." 10 100 3>&1 1>&2 2>&3)

a=$(echo tar -czf - $p | wc -c)

whiptail --fb --msgbox --title "Dosya Boyutu" "$p adresli dosya boyutu -> --$a"  15 50 
islemler
}


function Cıkıs () {

if(whiptail --fb --yesno --title "Çıkış" "Çıkış yapmak istiyor musunuz?" 15 50) then

echo "     "
echo "     "

echo "****************"
echo "Çıkış Yapıldı"
echo "****************"

echo "     "
echo "     "

else
islemler
fi

}


function islemler () {
ISLEM=$(whiptail --title "Ana Sayfa" "Hoşgeldiniz yapmak istediğiniz işlemi seçiniz.." --fb --menu --nocancel 18 100 10 \
"1:" "Tar dosyası oluştur" \
"2:" "Tar.gz dosyası oluştur" \
"3:" "Arşiv boyutunu öğren" \
"4:" "Çıkış yap" 3>&1 1>&2 2>&3)

case "$ISLEM" in

	"1:")
	Tarolustur
	;;

	"2:")
	Targzolustur
	;;

	"3:")
	boyutogren
	;;

	"4:")
	Cıkıs
	;;

esac

}

islemler


