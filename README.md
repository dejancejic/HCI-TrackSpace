# TrackSpace
## Uputstvo za upotrebu
### Uvod

  ***TrackSpace*** je aplikacija namjenjena atletičarima i trenerima, kao i entuzijastima atletike, koja ima za cilj da olakša organizaciju, upravljanje kao i praćenje rezultata samih takmičenja. Pri ulasku u samu aplikaciju potrebno je da se korisnik uloguje ili da nastavi kao posmatrač. Shodno tome, sama aplikacija ima 4 tipa korisnika:

#### Tipovi korisnika:

1)     Posmatrač;

2)     Administator kluba;

3)     Organizator takmičenja;

4)     Administrator sistema.

  Aplikacija je napisana u programskom jeziku C# koristeći Windows Presentation Foundation(WPF) framework i koristi MySQL bazu podataka kao glavni način čuvanja podataka te Entity framework kao mehanizam za pristup podacima. Za korištenje aplikacije potreban je računar(desktop ili laptop) te odgovarajuće okruženje za pokretanje same aplikacije.

  ### Prijava na sistem
   Kada se pokrene aplikacija, otvara se prozor za prijavu na sistem. Ukoliko korisnik ima nalog potrebno je da unese svoje kredencijale, odnosno korisničko ime i lozinku. Lozinka je sakrivena, ali se može u svakom trenutku otvoriti klikom na dugme(ikonica oka pored polja za unos lozinke). Zatim je potrebno da korisnik pritisne dugme za prijavu na sistem. Ukoliko korisnik nema nalog tada može da pristupi sistemu kroz klik na link za nastavak kao posmatrač. Svi nalozi(administrator, administrator kluba, organizator takmičenja) se kreiraju od strane naloga administratora, a inicijalno u sistemu postoji jedan takav sačuvan u bazi.
   
![image](https://github.com/user-attachments/assets/f952b4f3-ed4b-44b8-a014-8f8401d071c0)
<p align=center>Forma za prijavu na sistem</p>

  Pored toga korisnik može na jednostavan način da promijeni jezik(engleski ili srpski) klikom na rotirajuće dugme u donjem desnom ćošku koje mijenja zastavu prema odabranom jeziku. Takođe, moguće je i minimizovati ekran kao i zatvoriti aplikaciju klikom na dugmad u vrhu forme. Ova dugmad se nalaze i na svakom od preostalih prozora i takođe minimizuju otvorenu formu ili je zatvaraju. Nakon uspješne prijave otvara se prozor specifičan za tip naloga koji odgovara korisniku, dok se u slučaju neuspješne prijave prikazuje prozor koji sugeriše na grešku.

![image](https://github.com/user-attachments/assets/4a86f9fe-4590-4a0c-8ffb-d5eb76e54817)
<p align=center>Prikaz prozora u slučaju greške pri prijavi</p>

### Posmatrač
  U slučaju odabira ulaska u aplikaciju kao posmatrač sistem generiše formu kao na slici ispod.
  
  ![image](https://github.com/user-attachments/assets/9ee11ef7-b7bc-4d49-b3fe-61d817b1c24e)
<p align=center>Forma za posmatrača(prozor za prikaz klubova)</p>
Sa strane forme se nalazi meni za izbor prozora koji će se prikazivati pored menija u glavnom prozoru. Tu se nalaze opcije za prikaz stranice sa klubovima(inicijalno izabrana), stranice sa takmičenjima, stranice za podešavanja i dugme za odjavu sa sistema(izlaz).

Na stranici za prikaz klubova se nalazi traka za pretragu putem koje korisnik može da pretraži klubove po nazivu ili kodu kluba.

![image](https://github.com/user-attachments/assets/991eb69d-78cb-4361-ac2f-1e43797b0a09)
<p align=center>Pretraga klubova</p>







