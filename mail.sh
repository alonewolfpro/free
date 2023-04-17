#!/bin/bash

Siyah="\e[1;90m"
Kırmızı="\e[1;91m"
Yeşil="\e[1;92m"
Sarı="\e[1;93m"
Mavi="\e[1;94m"
Mor="\e[1;95m"
Beyaz="\e[1;97m"
temizlemek
afiş () {
yankı -e "
${Kırmızı} __ __ ${Sarı} ___. _________                                  
${Kırmızı}/ \ / \ ${Sarı}____\_ |__ / _____/ ________________ ______ ____  
${Kırmızı}\ \/\/ /${Sarı}/ __ \| __ \ \_____ \_/ ___\_ __ \__ \ \____ \_/ __ \
${Kırmızı} \ /${Sarı}\ ___/| \_\ \/ \ \___| | \// __ \| |_> > ___/
${Kırmızı} \__/\ /${Sarı} \___ >___ /_______ /\___ >__| (____ / __/ \___ >
${Kırmızı} \/${Sarı} \/ \/ ​​\/ ​​\/ ​​\/|__| \/ "
printf "\n\e[1;77m \e[0m\n\n" web sitelerinden e-postaları ve telefon numaralarını almak için bir web kazıyıcı
echo -e "\e[0;96m Geliştiren: ${Red}Sandesh (3xploitGuy)\n\n\n"                      
#echo -e "\e[0;96m Sürüm: ${Red}1.0 Kararlı\n\n\n"                  
}
tarayıcı () {
uyku 0.5
read -p $'\e[1;97m[\e[1;92m*\e[1;97m]\e[1;92m Başlamak için URL'yi girin : \e[1;97m' url
url_validity='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0- 9\+&@#/%=~_|]'
eğer [[ $url =~ $url_validity ]]
Daha sonra
read -p $'\e[1;97m[\e[1;92m*\e[1;97m]\e[1;92m Web sitesinden e-postaları sil (e/h): \e[1;97m' email
read -p $'\e[1;97m[\e[1;92m*\e[1;97m]\e[1;92m Web sitesinden telefon numaralarını kazıyın (e/h): \e[1;97m' telefon
if [ "$email" = "E" ] || ["$e-posta" = "y" ] || [ "$telefon" = "Y" ] || [ "$telefon" = "y" ]; Daha sonra
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Kazıma başladı"
kazıyıcı
fi
uyku 0.4
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Çıkış...\n"
çıkış
başka
echo -e "$Beyaz[$Kırmızı!$Beyaz] ${Kırmızı}URL'nizi kontrol edin (geçersiz)"
tarayıcı
fi
}
kazıyıcı () {
curl -s $url > temp.txt
if [ "$email" = "E" ] || ["$e-posta" = "y" ]; Daha sonra
e-posta_scraping
fi
eğer [ "$telefon" = "Y" ] || [ "$telefon" = "y" ]; Daha sonra
telefon_scraping
fi
rm temp.txt
eğer [[ -f "email.txt" ]] || [[ -f "telefon.txt" ]] ; Daha sonra
uyku 0.4
read -p $'\e[1;97m[\e[1;92m*\e[1;97m]\e[1;92m] Çıktıyı kaydetmek istiyor musunuz (y/h) : \e[1; 97 m' save_output
if [ "$save_output" = "Y" ] || ["$save_output" = "y" ]; Daha sonra
çıktı
fi
fi
uyku 0.4
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Çıkış...\n"
rm e-posta.txt telefon.txt 2> /dev/null
çıkış
}
email_scraping () {
grep -i -o '[A-Z0-9._%+-]\+@[A-Z0-9.-]\+\.[AZ]\{2,4\}' temp.txt | sort -u > e-posta.txt
if [[ -s email.txt ]]; Daha sonra
echo -e "$Beyaz[${Sarı}*$Beyaz] ${Sarı}E-postalar başarılı${Beyaz}"
kedi e-postası.txt
başka
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}E-posta bulunamadı"
rm e-posta.txt
fi
}
phone_scraping () {
grep -o '\([0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}\)\|\(([0- 9]\{3\})[0-9]\{3\}\-[0-9]\{4\}\)\|\([0-9]\{10\}\)\| \([0-9]\{3\}\s[0-9]\{3\}\s[0-9]\{4\}\)' temp.txt | sort -u > telefon.txt
if [[ -s phone.txt ]]; Daha sonra
echo -e "$Beyaz[${Sarı}*$Beyaz] ${Sarı}Telefon numaraları başarılı${Beyaz}"
kedi telefonu.txt
başka
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Telefon numarası bulunamadı"
rm telefon.txt
fi
}
çıktı () {
uyku 0.4
read -p $'\e[1;97m[\e[1;92m*\e[1;97m]\e[1;92m Klasör adını girin : \e[1;97m' klasör_adı
eğer [ -d "$klasör_adı" ]
Daha sonra
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Klasör zaten var"
çıktı
fi
mkdir $klasör_adı
mv email.txt $klasör_adı 2> /dev/null
mv phone.txt $klasör_adı 2> /dev/null
uyku 0.3
echo -e "$Beyaz[${Yeşil}*$Beyaz] ${Sarı}Çıktı kaydedildi"
uyku 0.4
echo -e "$Beyaz[${Kırmızı}!$Beyaz] ${Kırmızı}Çıkış...\n"
çıkış
}
internet () {
uyku 0.5
echo -e "$Beyaz[$Kırmızı!$Beyaz] ${Kırmızı}İnternet bağlantısı kontrol ediliyor"
wget -q --örümcek http://google.com
eğer [ $? -eq 0 ]; Daha sonra
echo -e "$Beyaz[$Sarı*$Beyaz] ${Sarı}Bağlandı"
başka
uyku 0.5
echo -e "$Beyaz[$Kırmızı!$Beyaz] ${Kırmızı}Daha sonra internet yok deneyin"
çıkış
fi
}
afiş
internet
tarayıcı
