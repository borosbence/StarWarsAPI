# Menekülés a Halálcsillagról

Luke Skywalker és csapata és az Ezeréves Sólyom legénysége, kiszeretné szabadítani Leila hercegnőt a Halálcsillagról. Droidjai, R2-D2 és C3-PO sikeresen bejutott a vezérlőközpontba, ahol navigálni tudják a csapat többi tagját.
 A mellékelt segédeszközökkel segítsen meghatározni a csapattagok pontos helyét, és kijutni a Halálcsillagról.

**1.)** Töltse fel a MySQL adatbázist az Eszközök mappába mellékelt _halalcsillag\_export.sql_ fájl alapján.

**2.)** A kiinduló Web API projektbe telepítse fel a szükséges NuGet csomagokat az **Entity Framework** használatához!

**3.)** A _pm\_commands.txt_ fájlban lévő utasítás még nem teljes. Az idézőjeles részbe be kell illeszteni egy connectionStringet. Az alábbi adatokat pontosvesszővel kell elválasztani és beilleszteni:

- **server** =localhost
- **user** **id** =root
- **database** =A feltöltött adatbázis neve

A **Package Manager Console** felületén adja ki a kiegészített parancsot. Ezzel a paranccsal sikerül lemodellezni az adatbázis táblákat és elkészíti a context osztályt is.

**4.)** A _Program.cs_ fájlban adja hozzá az _AddDbContext_ függőséget.

**5.)** Hozzon létre a _Models_ mappában egy _Koordinata_ osztályt. Az osztálynak az alábbi értékei legyenek:

- Publikus egész szám változók: X és Y
- Mindkét változó felett legyen egy szabály attribútum, X-nél: [Range(0,2601)], Y-nál: 0 és 2172 a szélső érték.

A Range attribútumhoz szükség lesz a System.ComponentModel.DataAnnotations könyvtárra.

- Az osztálynak legyen egy konstruktora, amely beállítja az értékeket a paraméterek alapján.

**6.)** A Controllers mappában hozzon létre egy üres API Controller osztályt _HelyszinController_ néven!

- Az osztálynak legyen egy privát változója a context osztályról.
- Legyen egy paraméteres konstruktora, ami értéket ad a context változónak.

A Controller osztályok végpontjait tesztelje majd a **Postman** alkalmazás segítéségével. POST üzenet esetén összetett adatokat a **Body** fülön, **raw** rádiógombbal, **JSON** formátumban adhat meg.

**7.)** Hozzon létre egy _string_ típusú (publikus) végpontot _Helyszin_ néven, ami paraméterként egy _Koordinata típusú_ változót vár. A végpontot csak HTTP POST metódussal lehessen elérni. Alapértelmezetten üzenetként adja vissza, hogy „A térképen nem szerepel ez a helység.&quot;.

**8.)** Készítsen egy másik _string_ típusú végpontot szintén _Helyszin_ néven, ami paraméterként egy _karakterNev (string)_ változót vár. A végpontot HTTP GET metódussal lehessen elérni. Alapértelmezetten üzenetként adja vissza, hogy „A karakter nincs a Halálcsillagon.&quot;.

**9.)** Készítsen egy kereső metódust _Kereses_ néven. A helyszíneknek vannak kezdő és egy vég koordinátái. A kezdőpont a bal felső sarkot, a vég a jobb alsó sarkot jelöli a térképen. A paraméterként kapott koordináta alapján és az adatbázisban tárolt helyiségek kezdő és végkoordinátái segítségével, határozza meg, hogy melyik helyiségben van az adott pont vagy karakter.

**Bónusz feladat:**

R2-D2-nak le kell kérdeznie az ajtókhoz tartozó kódot, amivel fel tudja törni a helyszínekhez tartozó zárakat. A hozzá tartozó kulcsok BCrypt titkosításban vannak, a helyszín kezdő koordinátáit tartalmazzák összefűzve.

**10.)** Telepítse fel a BCrypt.Net-Next NuGet csomagot a projekthez.

**11.)** Készítsen egy másik Controller osztályt _KulcsController_ néven, hasonlóan a _HelyszinController_ alapján.

**12.)** Hozzon létre egy _string_ típusú végpontot _KapuKod_ néven, ami paraméterként egy _helyszinNev_ változót vár. A végpontot csak HTTP GET metódussal lehessen elérni. Alapértelmezett üzenetként adja vissza, hogy „A helyiség nincs a Halálcsillagon.&quot;.

Fejezze be a végpontot úgy, hogy a kapott helységnév alapján adja vissza a helyszín X és Y kezdőkoordinátáit összefűzve, **BCrpyt** titkosításban.
