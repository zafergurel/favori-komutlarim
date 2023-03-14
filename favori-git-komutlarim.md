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

`git commit --amend -m "Commit mesajı"`<br>
Son commiti yeni eklemeler ya da düzenlemeleri dahil ederek değiştirir. Böylece tarihçede iki ayrı kayıt olmaz. Son yaptığınız commiti değiştirmek için kullanabilirsiniz.

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

`git stash`<br>
`git stash apply`<br>
Eğer projede bazı dosyalar değişmişken uzak repodan dosyalar çekilmek ve birleştirilmek istenirse (git pull ile), dosyalar çekilir (git fetch) ama birleştirme işlemi (git merge) gerçekleşmez. 

Bunun için bir yöntem, değişen dosyaları bir yerde saklamaktır. Bunun için `git stash` komutu kullanılır. Bu komut ile değişmiş dosyalar saklanır ve branchteki son temiz çalışan kopyaya (son commite) dönülür. Sonrasında `git pull` komutu ile işlem gerçekleştirilir. Eğer `git pull` yapıldıktan sonra birleştirme hatası alındıysa `git stash` yaptıktan sonra sadece `git merge` yapılması yeterlidir. Çünkü `git pull` aslında fetch ve merge işlemlerinin beraber yapılmasıdır, fetch yani dosyaların çekilmesi düzgün çalışmıştır ama merge'te sorun olmuştur. stash komutu ile temiz kopyaya dönülerek `git merge` yapılabilir. 

`git pull` ile uzak repodan yeni sürüm çekilip birleştirildikten sonra biraz önce `git stash` ile sakladığımız değişikliklerimizi yeni sürümün üzerine koyabiliriz. Bunun için de `git stash apply` komutu çalıştırılır. Değişiklikler yeni sürümün üzerine uygulanır. Sorun olursa merge hatası verilir ve bunların manuel olarak düzeltilmesi gerekir.

`git stash pop`<br>
Yukarıda `git stash apply` için anlatılanlar aynen geçerlidir. Tek fark, git stash pop yapıldığı zaman eğer stash listesindeki değişiklikler düzgün bir şekilde birleştirilirse, değişiklikler stash listesinden silinir. Bu komut asında `git stash apply && git stash drop` komuduyla aynı işi yapar.

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

`git show <commit-id>`<br>
Commit id kullanılarak ilgili committe ne değiştiğini gösterir. eğer `--no-patch` argümanı kullanılırsa, git log gösteriminde olduğu gibi sadece commit ile ilgili detaylar gösterilir. 

## Etiketleme (Tagging)
`git tag <etiket ismi>`<br>
Mevcut commiti (HEAD), verilen isim ile etiketler.

`git push origin <etiket ismi>`<br>
Etiketi, origin'e gönderir.

`git push --tags`<br>
Tüm etiketleri origine gönderir. Önerilmez.

`git push origin :<tag ismi>`<br>
`git push --delete origin <tag ismi>`<br>
Uzak repodaki (origin) bir tagı silmek için kullanılır.

`git tag <etiket ismi> <commit id>`<br>
Belirtilen commiti, verilen isim ile etiketler.

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
`git config --add alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"`
<br>
Sonrasında `git hist` komudu ile grafiksel olarak logları inceleyebiliriz.

`git diff HEAD~5 HEAD --name-status`<br>
`git diff HEAD~5 HEAD --stat`<br>
Son 5 committe değişen dosyaları gösteren komutlar.
İlki sadece dosya isimleri ile işlemi (A: Added, M: Modified, D: Deleted R#: Renamed) gösterir.
İkincisi ise dosyalardaki işlemlerin istatistiki bilgilerini (silinme, ekleme sayıları gibi) verir.

`git diff-tree --no-commit-id --name-only -r <commit-id>`<br>
Bir committe değişen dosyaları gösterir. --name-only yerine --name-status ve --stat konarak da değişen dosyalar hakkında farklı bilgiler alınabilir. <commit-id> yerine commite ait bir hash değeri gelebileceği gibi, HEAD (son commit) ya da son committen 3 commit öncesi için HEAD~3 kullanılabilir.
  
`git shortlog -s -n`<br>
Katkıda bulunan kişilerin katkı sayısı, ad ve soyad bilgilerini katkıda bulunma (commit) sayılarına göre sıralı şekilde gösterir.

`git shortlog -s -n --all --no-merges`<br>
Yukarıdakine ek olarak --all ve --no-merges eklenerek, tüm dallardaki (branch) katkıda bulunma sayısı hesaplanır; --no-merges parametresi ile de birleştirme işlemleri (merge commit) dikkate alınmaz.
 
`git log <tag veya commit id>..HEAD --no-merges --pretty=format:"%h %<(15,trunc)%an %cd %<(80,trunc)%s" --date=short` <br>
 Bir tag ya da commit'ten şu ana kadar yapılmış değişiklikleri, merge commitleri dikkate almadan özet olarak gösterir. Özellikle
   yeni sürüm çıkarırken önceki sürümden (tag'e bakarak) bu yana yapılmış değişiklikleri raporlamak için kullanılabilir.

## Önemli Yer İmleri
Şunları da buraya ekleyelim.<br>
[Gönderilmiş commitleri geri alma - SO](https://stackoverflow.com/questions/22682870/git-undo-pushed-commits)

[Silinmiş dosyayı geri getirme - SO](https://stackoverflow.com/questions/953481/find-and-restore-a-deleted-file-in-a-git-repository/953573)

[Git Sunumu](https://www.slideshare.net/ZaferGrel1/git-sunumu)

## Windows'ta Git Bash Kullanırken SSH Anahtarı Parolasını Bir Kere Girmek
Eğer SSH anahtarınızı bir parolayla koruyorsanız (ki öyle de yapmalısınız), her uzak Git sunucusuyla bir işlem yapacağınız zaman bu parolayı girmeniz gerekir. Windows'ta Git Bash kullanıyorsanız ~/.bashrc dosyanıza aşağıdaki satırları eklerseniz, Git Bash'i açtığınızda bir kere SSH anahtarınıza ait parolanız girmeniz istenir ve bu terminalde yapacağınız sonraki işlemlerde bir daha parola girmenize gerek kalmaz.

```
eval `ssh-agent -s`
ssh-add ~/.ssh/*_rsa
```

## Git İçin Kullandığım Aliaslar
Aşağıda sürekli kullandığım Git komutları için hazırladığım aliaslar var. Bunları ~/.bashrc ya da ~/.zshrc (Mac) dosyasına ekleyebilirsiniz.
```
alias gs='git status';
alias gp='git pull';
alias gm='git merge';
alias gps='git push';
alias gc='git commit';
alias gch='git checkout';
alias ga='git add';
alias gst='git stash';
alias gd='git diff';
alias gl='git log';
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short';
alias gpso='git push -u origin `git branch --show-current`';
```
