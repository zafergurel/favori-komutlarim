# Favori Git Komutlarım
Favori Git komutlarımı burada saklayacağım. Zaman içinde güzel bir kaynak olmasını istiyorum.

## Standart Git İşlemleri
`git init`<br>
Mevcut dizini git kontrolüne alır. 
Git dosyalarının durduğu .git isimli bir dizin oluşturur.

`git add .`<br>
Dizinde değişmiş tüm dosyaları commit edilmek üzere stage ortamına alır.

`git commit -m "Commit mesajı"`<br>
Stage ortamına alınmış dosyaları, commit eder.
-m ile yapılan commit işleminin neden yapıldığı yazılır (50 karakteri geçmeyelim).

`git log`<br>
Commit edilmiş tüm değişiklikleri listeler.

`git clone <uzak repo adresi>`<br>
Uzak repoyu klonlar. 

`git init`<br>
`git remote add origin master` <br>
`git push -u origin master` <br>
Bu da git clone ile benzer işlevi yerine getirir.<br>
İlk önce dizini git kontrolüne alır. Yerel bir repo oluşturur.<br>
Sonra uzak repo bağlantısını ekler.<br>
Sonrada uzaktaki repoya dosyaları gönderir. <br>
-u, bundan sonra sadece `git push`  dendiğinde otomatik olarak uzaktaki belirtilen dala gönderim yapılacağını belirtir.<br>
Buradaki origin, reponun kısa adı; master ise dalın ismidir. Bunlar değiştirilebilir.

`git pull`<br>
Uzaktaki repodan değişiklikleri çekip mevcut dosyalarla birleştirir.
`git fetch` ve `git merge` işlemlerinin tek seferde yapılmasıdır.

`git push <repo adı> <dal>`<br>
Uzak repodaki belirtilen dala yapılan değişiklikler gönderilir.<br>
`git push -u <repo> <dal>` olarak `-u` parametresi kullanılırsa varsayılan uzak dal belirtilmiş olur ve sonraki gönderme işlemlerinde sadece `git push` kullanılabilir.

`git remote -v`<br>
Uzak repoları ve adreslerini görme.

`git branch <yeni dal ismi>`<br>
Mevcut dalın son commiti baz alınarak yeni bir dal (branch) oluşturulur.<br>
Git'te bir dal oluşturmak çok hızlı ve güvenilir bir işlemdir.<br>
Her yeni özellik, görülen hata ya da projede çalışan kişiler için yeni bir dal oluşturulabilir.
Dal oluşturulduktan sonra <br>
`git checkout <dal ismi>` <br>
yazılarak bu dala geçiş yapılır ve bu dalda değişiklikler yapılır. Yapılan değişikliker `add` ve `commit` işlemleri ile loglandıktan 
sonra tekrar `checkout` işlemi ile başka bir dala geçilebilir. Bu şekilde yapılan değişiklikler kaybolmaz.

`git branch`<br>
Tüm dalları listeler. Hangi dalda olduğunuzu, yanında `*` olan daldan anlayabilirsiniz.

`git status`<br>
Hangi dalda olunduğu, değiştirilmiş veya eklenmiş dosyalar gösterilir.

## Faydalı İşlemler
`git branch -vv`<br>
Sürüm dallarının (branch) detaylı listelemesini yapar.
Hangi dalın hangi uzak repoya bağlı olduğunu gösterir.

`git log --pretty=oneline`<br>
Git loglarını tek satırda olacak şekilde derli toplu gösterir.

`git log --follow -p -- <dosya yolu>`<br>
Belirtilen dosyada yapılan tüm değişiklikleri detaylı olarak gösterir.<br>
[İlgili Stackoverflow sorusu](https://stackoverflow.com/questions/278192/view-the-change-history-of-a-file-using-git-versioning)

`git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short` <br>
Git loglarını grafiksel olarak göstermeye yarayan bir komut
Bu komudu alias olarak tanımlayıp ezberlemeye gerek yok. Aşağıdaki komut bunu yapabiliriz:<br>
`git config --add alias.hist log "--pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"`
<br>
Sonrasında `git hist` komudu ile grafiksel olarak logları inceleyebiliriz.

