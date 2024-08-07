
# Favori Linux Shell Komutlarım
Linux'u kullanırken işime yarayan ve sevdiğim shell komutlarını burada saklıyorum.

`du . -sh`<br>
Mevcut dizinin diskte ne kadar yer kapladığını gösterir.

`du . -Sh -d 1`<br>
Mevcut dizin ve birinci seviyedeki (-d 1) alt dizinlerin diskte ne kadar yer kapladığını gösterir.

`uname -a`<br>
Linux'a ait tüm sistem bilgisini gösterir. Sadece Linux çekirdek sürümü gerekiyosa `-r` parametresi kullanılabilir.

`netstat -antup`<br>
Tüm ağ bağlantılarını listelemek için kullanılır. 
- a: Tüm bağlantılar (sadece dinleyen soketleri görmek için -l kullanılır.)
- n: Sayısal adresleri göster
- t: TCP bağlantılarını göster
- u: UDP bağlantılarını göster
- p: Program bilgisini göster

`curl -L -s -o /dev/null -w "%{http_code}" <address>`<br>
Bir URL'ye bağlanıp dönen HTTP durum kodunu öğrenmek için kullanılır. <br>
- L: Location headerı gelirse, header içinde gelen adrese bağlanır.
- s: curl sessiz modda çalışsın.
- o: Çıktının hangi dosyaya yazılacağı belirlenir. Yukarıda yazılmış olan /dev/null ise Linux'ta özel bir dosya tipidir ve buraya yazılan hiçbir şey dikkate alınmaz.

curl için daha fazla bilgi için bakınız: https://curl.se/docs/manpage.html

`sudo mkdir /mnt/root && sudo mount --bind / /mnt/root`<br>
Mount işleminden dolayı gölgelenmiş dizinlere erişmek için root'u mountlamak.

`find . -type f -mtime +30 -ls | awk '{sum += $7 } END {print sum}'`<br>
Mevcut dizinde 30 günden eski dosyaların toplam tuttuğu yeri byte cinsinden gösterir.

`sudo nsenter -t $(docker inspect -f '{{.State.Pid}}' container_name_or_id) -n ss -ltu`<br>
iproute2 paketi yüklüyse ismi ya da id'si verilmiş docker container'ının TCP ve UDP bağlantılarını listeler.
