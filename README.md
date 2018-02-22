# favori-git-komutlari
Favori Git komutlarımı burada saklayacağım. Zaman içinde güzel bir kaynak olmasını istiyorum.

## Standart Git İşlemleri
`git init`
Mevcut dizini git kontrolüne alır. 
Git dosyalarının durduğu .git isimli bir dizin oluşturur.

`git add .`
Dizinde değişmiş tüm dosyaları commit edilmek üzere stage ortamına alır.

`git commit -m "Commit mesajı"`
Stage ortamına alınmış dosyaları, commit eder.
-m ile yapılan commit işleminin neden yapıldığı yazılır (50 karakteri geçmeyelim).

`git log`
Commit edilmiş tüm değişiklikleri listeler.

## Faydalı İşlemler
`git branch -vv`
Sürüm dallarının (branch) detaylı listelemesini yapar.
Hangi dalın hangi uzak repoya bağlı olduğunu gösterir.
