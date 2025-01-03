# TrackSpace
## Uputstvo za upotrebu
### Uvod

  ***TrackSpace*** je aplikacija namjenjena atletičarima i trenerima, kao i entuzijastima atletike, koja ima za cilj da olakša organizaciju, upravljanje kao i praćenje rezultata samih takmičenja. Pri ulasku u samu aplikaciju potrebno je da se korisnik uloguje ili da nastavi kao posmatrač. Shodno tome, sama aplikacija ima 4 tipa korisnika:

### Tipovi korisnika:

1)     Posmatrač;

2)     Administator kluba;

3)     Organizator takmičenja;

4)     Administrator sistema.

  Aplikacija je napisana u programskom jeziku C# koristeći Windows Presentation Foundation(WPF) framework i koristi MySQL bazu podataka kao glavni način čuvanja podataka te Entity framework kao mehanizam za pristup podacima. Za korištenje aplikacije potreban je računar(desktop ili laptop) te odgovarajuće okruženje za pokretanje same aplikacije. Lozinke se u bazi čuvaju u vidu njihovih heš vrijednosti. Svaki tip naloga podržava podešavanja aplikacije i odjavu iz sistema.

  ## Prijava na sistem
   Kada se pokrene aplikacija, otvara se prozor za prijavu na sistem. Ukoliko korisnik ima nalog potrebno je da unese svoje kredencijale, odnosno korisničko ime i lozinku. Lozinka je sakrivena, ali se može u svakom trenutku otvoriti klikom na dugme(ikonica oka pored polja za unos lozinke). Zatim je potrebno da korisnik pritisne dugme za prijavu na sistem. Ukoliko korisnik nema nalog tada može da pristupi sistemu kroz klik na link za nastavak kao posmatrač. Svi nalozi(administrator, administrator kluba, organizator takmičenja) se kreiraju od strane naloga administratora, a inicijalno u sistemu postoji jedan takav sačuvan u bazi.
   
![image](https://github.com/user-attachments/assets/f952b4f3-ed4b-44b8-a014-8f8401d071c0)
<p align=center>Forma za prijavu na sistem</p>

  Pored toga korisnik može na jednostavan način da promijeni jezik(engleski ili srpski) klikom na rotirajuće dugme u donjem desnom ćošku koje mijenja zastavu prema odabranom jeziku. Takođe, moguće je i minimizovati ekran kao i zatvoriti aplikaciju klikom na dugmad u vrhu forme. Ova dugmad se nalaze i na svakom od preostalih prozora i takođe minimizuju otvorenu formu ili je zatvaraju. Nakon uspješne prijave otvara se prozor specifičan za tip naloga koji odgovara korisniku, dok se u slučaju neuspješne prijave prikazuje prozor koji sugeriše na grešku.

![image](https://github.com/user-attachments/assets/4a86f9fe-4590-4a0c-8ffb-d5eb76e54817)
<p align=center>Prikaz prozora u slučaju greške pri prijavi</p>

## Posmatrač
  U slučaju odabira ulaska u aplikaciju kao posmatrač sistem generiše formu kao na slici ispod. Sa strane forme se nalazi meni za izbor prozora koji će se prikazivati pored menija u glavnom prozoru. Tu se nalaze opcije za prikaz stranice sa klubovima(inicijalno izabrana), stranice sa takmičenjima, stranice za podešavanja i dugme za odjavu sa sistema(izlaz).
  
  ![image](https://github.com/user-attachments/assets/9ee11ef7-b7bc-4d49-b3fe-61d817b1c24e)
<p align=center>Forma za posmatrača(prozor za prikaz klubova)</p>

### Klubovi
Na stranici za prikaz klubova se izlistavaju svi klubovi koji postoje u sistemu(ime, kod kluba, kontakt telefon i broj takmičara u klubu), a takođe tu se nalazi i traka za pretragu putem koje korisnik može da pretraži klubove po nazivu ili kodu kluba.

![image](https://github.com/user-attachments/assets/991eb69d-78cb-4361-ac2f-1e43797b0a09)
<p align=center>Pretraga klubova</p>
U slučaju odabira kluba putem pretrage ili klikom na link jednog od imena kluba prikazanog u tabeli otvara se novi prozor sa informacijama o klubu(naziv, kod kluba, mejl administratora i podaci o takmičarima u klubu).

![image](https://github.com/user-attachments/assets/9c492711-5ace-4833-9598-6984ab03e50a)
<p align=center>Prikaz informacija o klubu</p>
Korisnik se može vratiti na prikaz svih klubova klikom na dugme za povratak u donjem desnom ćošku forme, a takođe može i da prikaže sve takmičare klikom na jednog od njih u tabeli.

![image](https://github.com/user-attachments/assets/fa0ebfc8-9d49-4d98-b785-e2630ba7415d)
<p align=center>Prikaz informacija o takmičaru</p>

### Takmičenja
Na stranici za prikaz takmičenja se prikazuje forma koja ima 2 tab-a vezana za odabir prikaza takmičenja koja trebaju da se održe ili su završena. Tu se nalazi i traka za pretragu takmičenja po imenu ili lokaciji. Za svako takmičenje se prikazuju informacije o nazivu, datumu održavanja, lokaciji i broju prijava na takmičenje.

![image](https://github.com/user-attachments/assets/b80fecf1-6f76-4b96-b102-dd806912a9ea)
<p align=center>Prikaz takmičenja</p>
Takmičenja je moguće filtrirati i po godini održavanja što se podešava klikom na dugme kada se otvara combo-box za izbor godine. Filter se može i ugasiti ponovnim klikom na dugme za filtriranje čime se prikazuju sva takmičenja(u zavisnosti od tab-a).

![image](https://github.com/user-attachments/assets/8743b6ff-40b7-4703-aeb5-0a7044c136fc)
<p align=center>Filtriranje takmičenja po godini</p>

#### Informacije o takmičenju
Klikom na naziv takmičenja ili na pretraženo takmičenje prelazi se na stranicu za prikaz takmičenja, gdje se prikazuju informacije o datumu i vremenu takmičenja, stadionu(lokaciji), mejlu organizatora takmičenja te i sam opis takmičenja. Ispod su prikazane i sve discipline na takmičenju(naziv, vrijeme početka, kategorija i broj prijavljenih takmičara na disciplinu). Takođe, korisnik se može vratiti na prikaz svih takmičenja klikom na dugme za povratak u donjem dijelu forme.

![image](https://github.com/user-attachments/assets/8ce4c73f-2f0a-4ba3-9bf9-03edf35c4b71)
<p align=center>Prikaz informacija o takmičenju</p>

#### Informacije o disciplini
Klikom na jednu od disciplina otvara se nova stranica koja prikazuje podatke o disciplini, kao i prijavljene takmičare na neku disciplinu odnosno poziciju(sortirano po rezultatu, ako ga ima), ime, prezime, klub i rezultat. Rezulat će biti prikazan kada je u pitanju završeno takmičenje, odnosno kada organizator takmičenja unese informacije o rezultatima. Takođe, sortiranje takmičara je moguće po više kriterijuma klikom na naslov neke od kolona u tabeli.

![image](https://github.com/user-attachments/assets/084c19b8-3cc6-4c8a-b98e-b20e7cab6a48)
<p align=center>Prikaz informacija o disciplini sa takmičenja koje predstoji(startna lista)</p>

![image](https://github.com/user-attachments/assets/d6f38f2b-db28-4cc7-9c7c-8110401bc6b9)
<p align=center>Prikaz informacija o disciplini sa takmičenja koje je završeno(rezultati)</p>

U slučaju da se radi o trkačkoj disciplini, prikazuje se i labela na koju je moguće kliknuti, a koja vodi na prikaz informacija o grupama na toj disciplini.

![image](https://github.com/user-attachments/assets/7b9d4d3c-94a9-453b-b434-d539f53fe8df)
<p align=center>Prikaz informacija o trkačkoj disciplini</p>
Ovdje je takođe moguće prikazati više informacija o takmičaru klikom na polje jednog od njih, kao i u slučaju prikaza klubova, kao i kod forme za prikaz informacija o klubu.

#### Informacije o grupama
Klikom na labelu sa grupama prikazuje se nova stranica koja pored informacija o disciplini, prikazuje i sve grupe na takmičenju. Ukoliko nema nijedna grupa korisnik će dobiti obavještenje da za tu disciplinu još nisu formirane grupe.

![image](https://github.com/user-attachments/assets/1b449ebf-1ee4-486b-9e2b-d27149dcad08)
<p align=center>Prikaz informacija o grupama na trkačkoj disciplini</p>

## Administrator kluba

U slučaju da je ulogovani korisnik administrator kluba njemu se prikazuju iste funkcionalnosti kao i posmatraču(takmičenja i klubovi) s time da je u opcijama dodana i funkcionalnost prikaza kluba kojem je dati korisnik administrator.

![image](https://github.com/user-attachments/assets/073338cc-ef17-4bf1-aa93-302dbcf68720)
<p align=center>Forma za administratora kluba</p> 
Administrator kluba ima mogućnost prijave takmičara na takmičenje, na formi za prikaz informacija o takmičenju, ukoliko takmičenje počinje bar 2 dana od trenutnog datuma, odnosno ukoliko tek predstoji, što je prikazano na sljedećoj slici.

![image](https://github.com/user-attachments/assets/b0af4644-9735-4d7b-90f0-966a24ebc773)
<p align=center>Forma za prikaz informacija o predstojećem takmičenju</p> 

### Prijava na takmičenje
Klikom na dugme za prijavu takmičara na takmičenje otvara se forma za prijavu takmičara na discipline odabranog takmičenja. Tu su izlistane sve discipline i svi takmičari koji se mogu prijaviti na neku disciplinu(ukoliko je riječ o ženskoj kategoriji discipline prikazuju se samo osobe ženskog pola i suprotno). Korisnik bira koju disciplinu želi i prikazuju mu se, putem checkbox-ova 

![image](https://github.com/user-attachments/assets/bbde668e-339c-4385-b9a7-548b756a42e3)
<p align=center>Forma za prijavu na takmičenje</p>
Korisnik klikom na dugme za potvrđivanje prijave onda ažurira trenutne prijave na takmičenje za šta dobija i odgovarajuće obavještenje.

### Moj klub
Na stranici za prikaz sopstvenog kluba se prikazuju informacije o klubu za koji je dati administrator zadužen ili odgovarajuće obavještenje ako administratoru još uvijek nema dodijeljen klub od strane administratora sistema.

![image](https://github.com/user-attachments/assets/5b867868-b1a0-4bbd-bd67-43bcf8ca36fb)
<p align=center>Forma za prikaz administratorovog kluba</p>

Osim standardnog prikaza svih takmičara u klubu i informacija o samom klubu, administrator kluba ima i mogućnost dodavanja članova u klub, gdje se klikom na dugme u dnu stranice otvara prozor za dodavanje novog člana. Korisnik može da odabere ime, prezime, datum rođenja i pol takmičara, dok se kategorija takmičara automatski prikazuje u zavisnosti od godine rođenja takmičara.

![image](https://github.com/user-attachments/assets/ad54c53c-a070-408f-adb0-41fbac357fd2)
<p align=center>Forma za dodavanje novog takmičara u klub</p>
Ukoliko se ne popune sva polja prikazaće se obavještenje kao na slici ispod

![image](https://github.com/user-attachments/assets/3662cc8d-4305-42e0-8c6a-7fb03da564fb)
<p align=center>Prikaz greške u slučaju da nisu popunjena sva polja</p>

## Organizator takmičenja

Osnovna forma za organizatora takmičenja prikazana je na slici ispod. Pored funkcionalnosti prikaza svih takmičenja, oni imaju i mogućnost prikaza svojih takmičenja kojima mogu upravljati. Takođe, u bočnom meniju se nalazi i opcija za dodavanje novog takmičenja.

![image](https://github.com/user-attachments/assets/4f51ffcf-1f86-4ebf-8646-dc80a3ceb6a2)
<p align=center>Prikaz forme za organizatora takmičenja</p>

### Moja takmičenja
U slučaju da je izabrana opcija prikaza takmičenja za koje je zadužen trenutni organizator, prikazuju se sva njegova takmičenja ili obavještenje da trenutno nema takmičenja na kojima je on zadužen.

![image](https://github.com/user-attachments/assets/448f52df-b34b-42fc-90ba-3047fde0fd35)
<p align=center>Prikaz takmičenja za koje je zadužen organizator takmičenja</p>

Kada se uđe na jedno od izabranih takmičenja, klikom na labelu imena takmičenja, organizatoru se daje mogućnost da obriše dato takmičenje, pri čemu se tada otvara forma za potvrdu brisanja.

![image](https://github.com/user-attachments/assets/34a6b8ff-a0ff-4636-a420-b31be69e20ec)
<p align=center>Informacije o takmičenju za koje je zadužen organizator takmičenja</p>
 Nakon uspješnog brisanja prikazuje se obavještenje o uspješnom brisanju takmičenja.
 
![image](https://github.com/user-attachments/assets/c185111a-751d-4226-84af-26689bca520a)
<p align=center>Potvrda brisanja takmičenja</p>

Organizator takmičenja može da unosi rezultate takmičenja pri ulasku u samo takmičenje i na određenu disciplinu, tako što će klikom na prijavjenog takmičara na toj disciplini dobiti formu sa informacijama o takmičaru koja uključuje i polje za unos ili izmjenu rezultata koje je ostvario takmičar. Tada je potrebno da se klikne na dugme za ažuriranje rezultata kako bi promjene bile izvršene. Nakon uspješnog ažuriranja rezultata dobija se obavještenje o uspješnom ažuriranju rezultata takmičara.

![image](https://github.com/user-attachments/assets/cb5fcdf5-8596-485b-b308-0cac0c818d3a)
<p align=center>Ažuriranje rezultata takmičara</p>

### Dodavanje takmičenja
U slučaju izbora opcije za dodavanje takmičenja prikazuje se stranica kao na slici. Da bi se moglo preći na formu za dodavanje disciplina na takmičenje, potrebno je da se unese ime takmičenja koje ne smije biti duže od 40 karaktera, dok je ograničenje za opis takmičenja 400 karaktera i ono može biti i prazno dok ime takmičenja ne smije. Takođe, potrebno je unijeti lokaciju, datum i vrijeme početka takmičenja, gdje je potrebno da takmičenje počinje bar 3 dana od trenutnog datuma kako bi se ostavilo vremena za prijave na takmičenja.

![image](https://github.com/user-attachments/assets/2607f002-239c-47c6-bede-0a7c0eb51260)
<p align=center>Forma za dodavanje takmičenja</p>

#### Dodavanje disciplina
Organizator klikom na dugme za dodavanje disciplina zatim prelazi na stranicu za izbor disciplina, gdje je potrebno da iz izabere tip discipline(trkačka, skakačka ili bacačka) te da klikom na dugme doda disciplinu koja će se potom prebaciti na drugi panel, pri čemu će tu biti i mogućnost uklanjanja iste i vraćanje u prvobitni panel klikom na dugme ukloni.

![image](https://github.com/user-attachments/assets/e1de890b-c4e2-4d4d-b419-cb6b7de30b82)
<p align=center>Forma za dodavanje disciplina na takmičenje</p>
Nakon dodavanja nekoliko disciplina forma izgleda kao na slici ispod. Sada korisnik može, ukoliko je dodao barem jednu disciplinu, da kreira novo takmičenje klikom na dugme u dnu forme. U suprotnom dobiće obavještenje da je potrebno da doda barem jednu disciplinu. Takođe korisnik može i da se vrati na formu za dodavanje takmičenja ako želi da izmjeni tamo unesene informacije. To je omogućeno klikom na dugme za povratak nazad u donjem desnom ćošku forme.

![image](https://github.com/user-attachments/assets/5170a983-f326-4bfb-a7b7-9b2575a656b2)
<p align=center>Forma za dodavanje disciplina na takmičenje(sa nekoliko disciplina)</p>
Kada se klikne dugme za dodavanje takmičenja prvo se otvaraju prozori u kojima se za svaku od disciplina unosi vrijeme početka discipline te na kraju i prozor za potvrđivanje zahtjeva za kreiranje takmičenja. Ukoliko se potvrdi unos, prikazaće se obvještenje o uspješnosti kreiranja takmičenja i korisnik će biti preusmjeren na stranicu za dodavanje takmičenja.

![image](https://github.com/user-attachments/assets/86c2b2bb-1274-4a7f-a47c-bf138431c13d)
<p align=center>Prikaz prozora za dodavanje vremena početka discipline</p>

## Administrator
Administrator posjeduje mogućnosti dodavanja novih naloga i novih klubova. U ovom slučaju, inicijalno se prikazuje stranica za dodavanje naloga.

### Dodavanje naloga
Stranica za dodavanje naloga sadrži polja za izbor tipa naloga(administrator, organizator ili administrator kluba), korisničko ime, lozinku, ponovljenu lozinku i mejl. Svako polje posjeduje ugrađen mehanizam za provjeru validnosti teksta u njemu, pri čemu polje za korisničko ime ne smije sadržati razmake i mora biti kraće od 20 slova, lozinka ne smije biti duža od 40 karaktera niti kraća od 6 karaktera(dobiće se obavještenje u suprotnom), mejl ne smije biti duži od 40 karaktera i ne smije sadržati razmake. Takođe, ova forma ima i dugme za dodavanje naloga na čiji se klik dobija prozor za potvrdu dodavanja koji se može prihvatiti ili odbiti. U slučaju da se prihvati dodavanje, korisnik će dobiti obavještenje o uspješnosti dodavanja naloga i forma će se resetovati(polja postaju prazna, spremna za dodavanje novog korisnika). 

![image](https://github.com/user-attachments/assets/eea5cf28-9fdb-49c5-b9db-c0436cfa326d)
<p align=center>Forma za administratora(dodavanje naloga)</p>
Pored toga, klikom na dugme za dodavanje administratora vrši se provjera da li je korisničko ime zauzeto i u tom slučaju se administratoru prikazuje obavještenje da nalog sa tim korisničkim imenom već postoji te mu se onemogućava kreiranje takvog naloga.

### Dodavanje kluba
Izborom opcije za dodavanje kluba prikazuje se stranica za dodavanje novog kluba koja sadrži polje za izbor administratora kluba, gdje se prikazuju samo administratori kojima još nije dodijeljen klub te polja za unos imena kluba, koda kluba i kontakt telefona kluba. Svako polje posjeduje ograničenja koja se provjeravaju u sklopu forme pa tako nije moguće u polje za ime kluba unijeti broj ili da ime kluba bude duže od 40 karaktera, kod kluba automatski prelazi u velika slova, a mora biti dužine tačno 3 slova i ne smije biti broj niti razmak i broj telefona ne smije biti u vidu slova te ne smije biti duži od 15 brojeva.

![image](https://github.com/user-attachments/assets/029f5b35-e3f4-4fc4-ad86-060cabb47ab3)
<p align=center>Forma za dodavanje novog kluba</p>
Pritiskom na dugme za dodavanje takmičenja vrši se provjera da li postoji klub sa takvim kodom kluba u bazi i u tom slučaju korisniku se prikazuje obavještenje da takav klub već postoji te sistem neće dodati novi klub.

## Podešavanja aplikacije
Svaki tip naloga ima mogućnost da promijeni podešavanja aplikacije(temu aplikacije, font slova i jezik). U sistemu postoje 3 teme, a to su zelena, plava i crvena te 3 fonta, Roboto, Consolas i Comic Sans MS. Aplikacija nudi i izbor 2 tipa jezika odnosno srpski i engleski jezik. Tema se mijenja uključivanjem jednog od dugmadi koja se nalaze pored odgovarajuće teme, dok se opcije za izbor jezika i fonta biraju putem combo-box komponenti.

![image](https://github.com/user-attachments/assets/f2ae65b5-d24d-4afe-bebd-230af6507f1d)
<p align=center>Forma za podešavanje aplikacije(ista za sve tipove naloga)</p>
Ukoliko je riječ o nalogu posmatrača, podešavanja će biti sačuvana lokalno, dok je korisnik ulogovan u aplikaciju, dok će u slučaju promjena podešavanja za preostale tipove naloga data podešavanja biti sačuvana u bazi podataka te će se ista primjenjivati pri svakoj novoj prijavi u aplikaciju.


