# TrackSpace
## Uputstvo za upotrebu
### Uvod

  ***TrackSpace*** je aplikacija namjenjena atletičarima i trenerima, kao i entuzijastima atletike, koja ima za cilj da olakša organizaciju, upravljanje kao i praćenje rezultata samih takmičenja. Pri ulasku u samu aplikaciju potrebno je da se korisnik uloguje ili da nastavi kao posmatrač. Shodno tome, sama aplikacija ima 4 tipa korisnika:

### Tipovi korisnika:

1)     Posmatrač;

2)     Administator kluba;

3)     Organizator takmičenja;

4)     Administrator sistema.

  Aplikacija je napisana u programskom jeziku C# koristeći Windows Presentation Foundation(WPF) framework i koristi MySQL bazu podataka kao glavni način čuvanja podataka te Entity framework kao mehanizam za pristup podacima. Za korištenje aplikacije potreban je računar(desktop ili laptop) te odgovarajuće okruženje za pokretanje same aplikacije.

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
Klikom na jednu od disciplina otvara se nova stranica koja prikazuje podatke o disciplini, kao i prijavljene takmičare na neku disciplinu odnosno poziciju(sortirano po rezultatu, ako ga ima), ime, prezime, klub i rezultat. Rezulat će biti prikazan kada je u pitanju završeno takmičenje, odnosno kada organizator takmičenja unese informacije o rezultatima.

![image](https://github.com/user-attachments/assets/084c19b8-3cc6-4c8a-b98e-b20e7cab6a48)
<p align=center>Prikaz informacija o disciplini</p>
U slučaju da se radi o trkačkoj disciplini, prikazuje se i labela na koju je moguće kliknuti, a koja vodi na prikaz informacija o grupama na toj disciplini.

![image](https://github.com/user-attachments/assets/7b9d4d3c-94a9-453b-b434-d539f53fe8df)
<p align=center>Prikaz informacija o trkačkoj disciplini</p>
Ovdje je takođe moguće prikazati više informacija o takmičaru klikom na polje jednog od njih, kao i u slučaju prikaza klubova, kao i kod forme za prikaz informacija o klubu.

#### Informacije o grupama
Klikom na labelu sa grupama prikazuje se nova stranica koja pored informacija o disciplini, prikazuje i sve grupe na takmičenju. Ukoliko nema nijedna grupa korisnik će dobiti obavještenje da za tu disciplinu još nisu formirane grupe.

![image](https://github.com/user-attachments/assets/1b449ebf-1ee4-486b-9e2b-d27149dcad08)
<p align=center>Prikaz informacija o grupama na trkačkoj disciplini</p>

## Administrator kluba





