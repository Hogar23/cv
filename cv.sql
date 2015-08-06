-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2015 at 12:30 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE IF NOT EXISTS `description` (
  `id_description` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `id_project` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id_description`, `description`, `createdAt`, `updatedAt`, `id_project`) VALUES
(1, '       <p class="text-justify">\n        Web sajt i online prodavnica za muzičku grupu Sick Touch sa Novog Beograda. Web sajt je radjen u CakePhp frameworku uz pomoc JavaScripta. U cms-u je je obezbedjeno stavljanje i skidanje artikala u prodaju, manipulacija registrovanim korisnicima, dodavanje i brisanje albuma i pesama u albumima.\n          <br> <br>\n\n      </p>\n      <p>Development: Ivana Postic & Petar Lazarevic<br>\nDizajn: DRAMA DELIGHT</p>\n<p>Url: <a href=''http://sicktouch.rs/'' target="_blank">sicktouch.rs</a></p>\n      <img  class=''description-picture'' src="./img/projekti/sick.png">', '2015-04-01 00:00:00', '2015-07-30 10:28:00', 1),
(2, ' <p class="text-justify">\n         Corfu Yachting je web sajt na kome se mogu pronaci brodovi za iznajmljivanje ili za prodavanje. Web sajt je radjen u php-u + JavaScript. Ima svoj cms koji omogucava dodavanje,skidanje,editovanje brodova, pravljenje galerija, manipulacija slajderom(ubacivanje slika, poslovica i stila prikazivanja slike(fade, slide...)). U cms-u takodje mogu da se dodaju i nove stranice, da se od njih po izboru pravi padajuci meni. Korisnik sadrzaj menja i ubacuje pomocu tinymce editora, u bazu se sacuva html kod editora i prikaze se na sajtu onako kao sto je korisnik napravio u editoru. \n          <br> <br>\n\n      </p>\n      <p>Development: Petar Lazarevic<br>\n      Dizajn: Vladimir Strumberger</p>\n<p>Url: <a href=''http://kastamonitis.com/~corfuyac/'' target="_blank">Corfu Yachting</a></p>\n      <img  class=''description-picture'' src="./img/projekti/corfu.png">      ', '2015-04-01 00:00:00', '2015-05-08 16:14:05', 2),
(3, '\n       <p class="text-justify">\n          Brandsmoke je sajt za prodaju elekronskih cigatera i sve pratece opreme. Napravljen je u CakePhp frameworku + JavaScript. Cms ovog sajta sadrzi manipulaciju brendovima, proizvodima odredjenog brenda(slike,opis,opcije proizvoda). Opcije proizvoda se dodavaju posebno, npr. e-tecnost kao opciju moze da ima aromu, jacinu, vrednost opcija definise opciju (aroma=>jagoda,jacina=>6mg). Proizvod moze biti na akciji, administrator upise za odredjeni artikl procenat popusta, korisnik kad vidi artikl na snizenju bude mu prikazan sa precrtanom starom cenom, prikazanom novom cenom i sa crvenim povezom preko slike na kojoj pise procenat popusta. U cmsu se moze upravljati registrovanim korisnicima(blokirati nalog, editovati kompletnog kosinika, dodavati i skidati administratora). Na ovom web sajtu je razvijena prodaja i pomocu referal koda. Svaki autorizovan korisnik moze biti vlasnik koda koji snizava cenu za odredjeni procenat, kada neko iskoristi taj kod za kupovinu i dobije 10% popusta, vlasnik tog koda zaradjuje 5% od ukupne narudzbine.\n          <br> <br>\n\n      </p>\n      <p>Development: Ivan & Ivana Postic, Petar Lazarevic<br>\n      Dizajn: MILZOR digital</p>\n<p>Url: <a href=''http://brandsmoke.com/'' target="_blank">Brandsmoke</a></p>\n      <img  class=''description-picture'' src="./img/projekti/brand.png">      \n', '2015-04-29 00:00:00', '2015-04-29 00:00:00', 3),
(4, '       <p class="text-justify">\n          Web sajt za Termovent SC livnicu čelika iz Bačke Topole napravljen je s ciljem da se akcionari i budući klijenti brže informišu o preduzeću. Sajt je napravljen u php-u + JavaScript, napravljen je i cms pomoću kojeg mogu da se dodaju, edituju i brisu novosti, sve informacije za akcijonarsko društvo kao i finansijski izveštaji preduzeća. Pomoću cms-a takeđe se mogu dodavati,brisati galerije i slike u galerijama.\n          <br>\n          <br>\n\n      </p>\n      <p>Development:Petar Lazarević<br>\n      Dizajn: Petar Lazarević</p>\n<p>Url: <a href=''http://livnica.com/'' target="_blank">Termovent SC Livnica Čelika AD Bačka Topola</a></p>\n      <img  class=''description-picture'' src="./img/projekti/livnica.png">      \n\n', '2015-05-30 00:00:00', '2015-04-30 00:00:00', 4),
(5, '       <p class="text-justify">\r\n        Web sajt Pogon Pobeda namenjen je da bi objedinio delatnosti izvršne produkcije: grafički i web dizajn, kao i video produkciju, produkciju zvuka i 2D / 3D animaciju. Ovo je staticki sajt radjen u php-u + JavaScript.\r\n          <br> <br>\r\n\r\n      </p>\r\n      <p>Development:Petar Lazarevic<br>\r\n      Dizajn: Mirko Lukic</p>\r\n    <p>Url: <a href=''http://pogonpobeda.com/'' target="_blank">Pogon pobeda</a></p>\r\n      <img  class=''description-picture'' src="./img/projekti/pogon.png">      \r\n', '2015-05-01 00:00:00', '2015-05-01 00:00:00', 5),
(6, '\n\n       <p class="text-justify">\n        Web sajt Bastovan sluzi za informisanje o biljkama i kako odrzavati biljke, u planu su bili i dnevni saveti bastovana. Napravljena baza za savete i postoji par saveta, ali vlasnik nije bio zainteresovan da nastavi. Ovo je staticki sajt radjen u php-u + JavaScript.\n          <br> <br>\n\n      </p>\n      <p>Development:Petar Lazarevic<br>\n      Dizajn: Mirko Lukic</p>\n    <p>Url: <a href=''http://bastovan.com/'' target="_blank">Bastovan</a></p>\n      <img  class=''description-picture'' src="./img/projekti/bastovan.png">      ', '2015-05-01 00:00:00', '2015-05-01 00:00:00', 6),
(7, '       <p class="text-justify">\n        Misha cvijovic je pijanistkinja i kompozitor. Web sajt je namenjen da bi buduci saradnici, kolege imale uvid u njen rad. na sajtu se nalaze njene kompozicije, slike iz predstava za koje je komponovala muziku. Web sajt je radjen u php-u + Javascript.          <br> <br>\n\n      </p>\n      <p>Development:Petar Lazarevic<br>\n      Dizajn: Mirko Lukic<br>Video: Vladimir Strumberger</p>\n    <p>Url: <a href=''http://mishacvijovic.com/'' target="_blank">Misha Cvijovic</a></p>\n      <img  class=''description-picture'' src="./img/projekti/misha.jpg">      ', '2015-05-01 00:00:00', '2015-05-01 00:00:00', 7),
(8, '<p class="text-justify">\r\n        Kala-lux je firma koja proizvodi i prodaje proizvode od plastike i opremu za kupatila. Na sajtu se nalaze njihovi proizvodi, a i proizvodi koje preprodaje. Na sajtu se moze pogledati ceo asortiman za pravna i fizicka lica. Web sajt je odradjen u CakePhp-u + JavaScript. CMS za ovaj sajt omogucava adminu da dodaje nove proizvode za brendove i samim tim svaki brend-vrsta_proizvoda-proizvod dobiju svoje mesto u meniju. \r\n        <br> <br>\r\n\r\n      </p>\r\n      <p>Development:Ivan & Ivana Postic, Petar Lazarevic<br>\r\n      Dizajn: Petar Lazarevic</p>   \r\n    <p>Url: <a href=''http://kajalux.com/'' target="_blank">Kaja-lux</a></p>\r\n      <img  class=''description-picture'' src="./img/projekti/kaja.png"> ', '2015-05-01 00:00:00', '2015-05-01 00:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `description`, `createdAt`, `updatedAt`) VALUES
(1, '<p class="home-text text-center">\n\nPotreba ljudi ili organizacija da drugima kroz slike i reči predstave sebe, svoju organizaciju, porodicu, aktivnosti, interesovanja, razmišljanja... doprinela je popularnosti ovog tipa web sajta. <br><br>  \n<img src="CV/11801013_662688557163990_549577960_o.jpg" style="width:44%">\n\n<br><br>\nOvaj projekat je nastao sa ciljem da sto bolje predstavi moj rad, znanja koja sam stekao, ujedno je bio i motiv za učenje. <br>\n\n</p>\n<p class="">\n\n</p>\n\n\n  <div class=''col-md-4 text-center soc''>\n    <a href="https://www.facebook.com/petarlazarevic23" target="_blank">\n      <img src=''./img/face.png'' class=''''>\n    </a>\n    </div>\n\n    <div class=''col-md-4 text-center soc''>\n    <a href="https://plus.google.com/111065199036202805707/posts" target="_blank" >\n      <img src=''./img/google.png'' class=''''>\n    </a>\n    </div>\n\n    <div class=''col-md-4 text-center soc''>\n      <a href="https://www.linkedin.com/in/petarlazarevic23" target="_blank" >\n        <img src=''./img/in.png'' class=''''>\n      </a>\n    </div>\n<p class="home-text text-left" style="font-size:12px">Za izradu ove prezentacije sam koristio Backbone, Underscore js biblioteke i Nodejs klijent server<br></p>\n', '2015-05-03 00:00:00', '2015-07-30 10:05:21'),
(2, '<iframe src="http://docs.google.com/gview?url=http://svarc.rs/app/webroot/files/petarCV.pdf&embedded=true" style="width:100%; height:623px;" frameborder="0"></iframe>', '2015-05-04 00:00:00', '2015-07-30 09:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id_project` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id_project`, `name`, `picture`, `createdAt`, `updatedAt`) VALUES
(1, 'Sick Touch', 'sick.png', '2015-04-01 00:00:00', '2015-04-01 00:00:00'),
(2, 'Corfy Yachting', 'corfu.png', '2015-04-16 00:00:00', '2015-04-10 00:00:00'),
(3, 'Brandsmoke', 'brand.png', '2015-04-29 00:00:00', '2015-04-29 00:00:00'),
(4, 'Termovent sc Backa Topola', 'livnica.png', '2015-04-29 00:00:00', '2015-04-29 00:00:00'),
(5, 'Pogon Pobeda', 'pogon.png', '2015-04-29 00:00:00', '2015-04-29 00:00:00'),
(6, 'Bastovan', 'bastovan.png', '2015-04-29 00:00:00', '2015-04-29 00:00:00'),
(7, 'Misha Cvijovic', 'misha.jpg', '2015-04-29 00:00:00', '2015-04-29 00:00:00'),
(8, 'Kaja-lux', 'kaja.png', '2015-04-29 00:00:00', '2015-04-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `pass`, `gender`, `createdAt`, `updatedAt`) VALUES
(1, 'Armagedon', 'lopata2', 'Male', '2015-05-03 00:00:00', '2015-05-03 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id_description`),
  ADD UNIQUE KEY `id_description` (`id_description`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`),
  ADD UNIQUE KEY `id_page` (`id_page`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_project`),
  ADD UNIQUE KEY `id_project` (`id_project`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id_description` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
