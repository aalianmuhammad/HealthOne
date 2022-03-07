-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 09:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnementen`
--

CREATE TABLE `abonnementen` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prijs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abonnementen`
--

INSERT INTO `abonnementen` (`id`, `type`, `prijs`) VALUES
(1, 'Jaar-abonnement', '100'),
(2, 'Maand-abonnement', '12.50');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `picture`) VALUES
(1, 'Roeitrainer', 'categories/roeitrainer.jpg'),
(2, 'Crosstrainer', 'categories/crosstrainer.jpg'),
(3, 'Hometrainer', 'categories/hometrainer.jpg'),
(4, 'Loopband', 'categories/loopband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `openingstijden`
--

CREATE TABLE `openingstijden` (
  `id` int(7) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `openingstijden`
--

INSERT INTO `openingstijden` (`id`, `day`, `time`) VALUES
(1, 'Maandag', '7:00 tot 20:00'),
(2, 'Dinsdag', '8:00 tot 20:00'),
(3, 'Woensdag', '7:00 tot 20:00'),
(4, 'Donderdag', '8:00 tot 20:00'),
(5, 'Vrijdag', '7:00 tot 21:30'),
(6, 'Zaterdag', '8:00 tot 13:00'),
(7, 'Zondag', '8:00 tot 13:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(31, 'Crosstrainer - Focus Fitness Fox 3', 'categories/crosstrainer/cr1.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor iedere thuissporter. Deze crosstrainer geeft je een stabiele training en is fluisterstil in gebruik. De verstelbare voetpedalen van de Fox 3 maken deze crosstrainer geschikt voor verschillende lichaamslengtes. Daarnaast maakt het vliegwiel, met een gewicht van 7 kg, je training comfortabel en zorgt dit vliegwiel voor een mooie ronde rotatie. Door deze factoren heeft de Focus Fitness Fox 3 in het verleden diverse Kieskeurig awards gewonnen.', 2),
(32, 'Crosstrainer - Focus Fitness Fox 4', 'categories/crosstrainer/cr2.jpg', 'Met de Focus Fitness Fox 4 haal je een uitstekende crosstrainer in huis. Deze crosstrainer biedt je met het zware vliegwiel aan de voorkant, de hoge mate van stabiliteit en de longitudinale pas een unieke fitnesservaring in je eigen huis! De Focus Fitness Fox 4 is een hoogwaardige frontcrosstrainer met een uitstekende prijs-kwaliteitverhouding.\r\n\r\n', 2),
(33, 'Crosstrainer - Focus Fitness Fox 3 iPlus', 'categories/crosstrainer/cr3.jpg', 'De Focus Fitness Fox 3 iPlus is de ideale crosstrainer voor de thuissporter. De Fox 3 iPlus is niet alleen stabiel en sterk, maar ook nog eens geruisloos. Naast een vliegwiel van 7 kg en verstelbare voetpedalen is de Fox 3 iPlus voorzien van de nieuwste technieken. Denk hierbij aan de ingebouwde Bluetooth functie waarmee de computer van de crosstrainer contact maakt met je tablet of smartphone. Hierdoor neemt je tablet of smartphone de functie van trainingscomputer over en kun je met zeer interessante app’s interactief trainen.', 2),
(34, 'Crosstrainer - Focus Fitness Fox 5 iPlus', 'categories/crosstrainer/cr4.jpg', 'De Focus Fitness Fox 5 iPlus is een rear-drive crosstrainer uit de Focus Fitness lijn. Deze crosstrainer beschikt over vele mogelijkheden en is gemaakt van hoogwaardige materialen. De hoge kwaliteit is af te lezen aan het zware vliegwiel van 10 kg, de verstelbare voetpedalen, de in hoek verstelbare lengtepas, het zware gewicht van het apparaat en het hoogwaardig weerstandsysteem. Als uniek kenmerk heeft de Fox 5 iPlus crosstrainer vernieuwde anti-slip handgrepen om meer verschillende spiergroepen in het bovenlichaam te trainen. De Fox 5 iPlus geeft je ook de mogelijkheid om de crosstrainer te koppelen aan een app op je telefoon of tablet, zodat je interactief kunt trainen.', 2),
(35, 'Crosstrainer - Focus Fitness Fox 3 HRC', 'categories/crosstrainer/cr5.jpg', 'De Fox 3 HRC is een crosstrainer van Focus Fitness met een uitstekende prijs-kwaliteitverhouding. Door de grote keuze aan trainingsprogramma\'s raak je nooit uitgetraind en de trainingscomputer geeft je inzicht in al je prestaties.', 2),
(36, 'Crosstrainer - Proform 325 CSEi', 'categories/crosstrainer/cr6.jpg', 'De Proform 325 CSEi is een zeer geschikte crosstrainer voor als je graag je conditie op peil wilt houden of calorieën wilt verbranden, maar daarvoor niet naar de sportschool wilt gaan. Deze crosstrainer is namelijk perfect voor thuisgebruik door het eenvoudig te gebruiken display. Hij is goed afgewerkt en heeft veel pluspunten, zoals de bidon- en tablethouder en de ventilator en speakers in het display.', 2),
(43, 'Roeitrainer - Focus Fitness Row 2', 'categories/roeitrainer/rt1.jpg', 'Deze Row 2 roeitrainer van Focus Fitness is voorzien van een stijlvol design en sterk frame dat voldoende uitdaging biedt voor het gehele gezin. Door de V-belt aandrijving is de Row 2 tijdens gebruik fluisterstil en na training kan hij eenvoudig worden opgeklapt en worden weggerold. De fitnessapparaten van Focus Fitnes staan bekend om de goede prijs/kwaliteit verhoudingen en deze Row 2 is hier een perfect voorbeeld van. Kortom, deze roeitrainer is een perfect apparaat voor de thuissporter!', 1),
(44, 'Roeitrainer - Focus Fitness Row 3', 'categories/roeitrainer/rt2.jpg', 'De Focus Fitness Row 3 is de ideale roeitrainer voor de thuissporter. Zo beschikt de Row 3 over een prachtig design, magnetisch weerstandsysteem en sterk frame. Het magnetisch weerstandsysteem zorgt voor een nauwkeurige roeibeleving. Daarnaast train je geheel geruisloos en is de roeitrainer onderhoudsvrij. Met het eigen gewicht van 35 kg haal je met de Row 3 een stabiele en degelijke roeitrainer in huis.', 1),
(45, 'Roeitrainer - NordicTrack RX800', 'categories/roeitrainer/rt3.jpg', 'De NordicTrack RX800 is een uitstekende roeitrainer en is geschikt voor intensief thuisgebruik.. Het luchtweerstandsysteem zorgt voor een optimale roeibeleving, waarbij weerstand wordt opgebouwd als er meer kracht wordt gezet. Dus hoe harder jij je best doet, hoe zwaarder het wordt. Het bijzondere aan deze roeitrainer is dat de rails in te klappen is. Op deze manier bespaart de roeitrainer ruimte wanneer deze niet gebruikt wordt. Ideaal wanneer je weinig ruimte tot je beschikking hebt!', 1),
(49, ' Roeitrainer - Kettler AquaRower 500', 'categories/roeitrainer/rt4.jpg', 'Met de Kettler AquaRower 500 train je effectief meerdere spiergroepen en ervaar je het gevoel alsof je echt op het water traint. Deze semi-professionele roeitrainer is erg stevig en heeft een hoogwaardige afwerking. Daarnaast is hij voorzien van een grote gebruiksvriendelijke console om al je trainingsgegevens bij te houden.', 1),
(51, 'Roeitrainer - NordicTrack RW900', 'categories/roeitrainer/rt5.jpg', 'De NordicTrack RW900 is een roeitrainer voor intensief gebruik. De roeitrainer wordt aangedreven door zowel luchtweerstand als magnetische weerstand en daarmee maak je een soepele en natuurlijke roeibeweging. Dankzij de luchtweerstand wordt de weerstand opgebouwd indien er meer kracht wordt gezet.', 1),
(52, 'Roeitrainer - Finnlo Aquon Evolution', 'categories/roeitrainer/rt6.jpg', 'De Finnlo Aquon Evolution is een high-end roeitrainer van professionele kwaliteit, waarme je jouw favoriete roeitrainer uit de sportschool in huis haalt. De combinatie van luchtweerstand en magnetische weerstand Ã©n de voetpedalen die slechts 9 cm uit elkaar staan, zorgt voor een zeer realistische roeiervaring. Dankzij de uitgebreide trainingscomputer wordt de weerstand automatisch aangepast. Door de extra lange rails en het lange koord is deze roeitrainer ook geschikt voor lange mensen.\r\n\r\n', 1),
(53, 'Hometrainer - FitBike Ride 1', 'categories/hometrainer/ht1.jpeg', 'De Hometrainer Ride 1 van FitBike is de perfecte hometrainer voor thuisgebruik. De hometrainer is eenvoudig en prettig in gebruik, zorgt voor een aangename manier van thuis trainen en is geschikt voor de (beginnende) thuissporter die comfortabel wil trainen.', 3),
(54, 'Hometrainer - FitBike Ride 3', 'categories/hometrainer/ht2.jpeg', 'De Fitbike Ride 3 heeft alles wat je zoekt in een hometrainer. De hometrainer heeft een zwaar vliegwiel, is gemaakt van de beste materialen en heeft een lage instap. Door deze specificaties staat de Ride 3 bekend als een hometrainer met een uitstekende prijs-kwaliteitverhouding.\r\n\r\n', 3),
(55, 'Hometrainer - FitBike Ride 5', 'categories/hometrainer/ht3.jpeg', 'De Fitbike Ride 5 is door zijn fantastische prijs/kwaliteitverhouding al jarenlang enorm populair. Deze hometrainer is stabiel, duurzaam, comfortabel in gebruik en biedt daarnaast vele trainingsmogelijkheden om je persoonlijke doelen te bereiken. Door de uitstekende kwaliteit en grote veelzijdigheid is de Fitbike Ride 5 zo populair dat hij de \'Best Reviewed\' award van Kieskeurig.nl al vele keren heeft gewonnen!\r\n\r\n', 3),
(56, 'Hometrainer - Gymost Turbo B11', 'categories/hometrainer/ht4.jpeg', 'De Gymost Turbo B11 is een high-end hometrainer, geschikt voor ieder gebruik. De Turbo B11 is gemaakt voor de professionele markt, maar dankzij zijn enorm goede prijs/kwaliteit verhouding tevens geschikt voor thuis gebruik. Deze hometrainer onderscheidt zich van andere modellen binnen dit segment dankzij zijn zelf genererende systeem, zware vliegwiel en hoge belastbaarheid.\r\n\r\n', 3),
(57, 'Hometrainer - FitBike Ride 6 iPlus', 'categories/hometrainer/ht5.jpeg', 'De Ride 6 iPlus hometrainer van het merk FitBike is een van de beste hometrainers van dit moment. De hometrainer is zeer solide en beschikt over de nieuwste technieken. Via Bluetooth kun je de Ride 6 iPlus aansluiten op je smartphone of tablet.\r\n\r\n', 3),
(58, 'Hometrainer - FitBike Senator iPlus - Ergometer', 'categories/hometrainer/ht6.jpeg', 'De Fitbike Senator iPlus is het paradepaardje onder de hometrainers van het merk Fitbike. De hometrainer beschikt over een stabiel en ijzersterk frame, zwaar vliegwiel, lage instap en tablethouder inclusief Bluetooth koppeling. Het ijzersterke frame heeft een eigen gewicht van 47 kg en is belastbaar tot een lichaamsgewicht van 180 kg. Daarnaast beschikt de Senator over een 10 kg zwaar vliegwiel, dat wordt aangestuurd door middel van een EMS (elektromagnetisch remsysteem).\r\n\r\nOf je nu op zoek bent naar een hometrainer voor zwaar intensief gebruik, revalidatiedoeleinde of je gewoon lekker in beweging wilt blijven, met de Senator iPlus beschik je over een hometrainer die aan al je wensen voldoet!', 3),
(59, 'Loopband - Bowflex 18', 'categories/loopband/lo1.jpeg', 'De Bowflex 18 is een loopband die geschikt is voor zowel thuisgebruik als semiprofessioneel gebruik. De Bowflex 18 is voorzien van een 7 inch HD touchscreen, diverse trainingsprogrammaâ€™s en vele trainingsniveaus waarmee jij je prestaties kunt verbeteren tot het niveau dat jij wilt bereiken!\r\n\r\n', 4),
(60, 'Loopband - Bowflex 56', 'categories/loopband/lo2.jpeg', 'De Bowflex 56 is een kwalitatief goede loopband die geschikt is voor thuisgebruik en semiprofessionele doeleinden. De loopband heeft vele diverse mogelijkheden voor trainingsprogramma’s en trainingsniveaus waarmee jij je conditie kunt verbeteren. Verder heeft de loopband een extra groot loopoppervlakte met een hellingshoek die bergopwaarts en bergafwaarts gaat en met een maximale snelheid van 20 km/h biedt de Bowflex 56 extra mogelijkheden waardoor jij je prestaties kan verbeteren tot het niveau wat jij wilt behalen.', 4),
(61, 'Loopband - Focus Fitness Jet 1', 'categories/loopband/lo3.jpeg', 'De Focus Fitness Jet 1 is een perfecte loopband voor thuisgebruik. De Jet 1 is makkelijk in gebruik, heeft een fijn loopvlak en biedt voldoende trainingsmogelijkheden. Na de training kun je de loopband inklappen en wegrollen met de transportwieltjes.\r\n\r\n', 4),
(62, 'Loopband - Focus Fitness Jet 5', 'categories/loopband/lo4.jpeg', 'Focus Fitness brengt met de Jet 5 een vernieuwde loopband op de markt. Het verbeterde model beschikt over een sterker frame, breder/langer loopvlak en is vele malen makkelijker op te bouwen dan zijn voorgangers.\r\n\r\nZo is de complete loopband volledig voorgemonteerd en hoef je hem enkel uit te klappen en 8 schroeven aan te draaien. De Jet 5 serie is een allround loopband, geschikt voor alle loopvormen en gericht op thuisgebruik.', 4),
(63, 'Loopband - Focus Fitness Jet 2', 'categories/loopband/lo5.jpeg', 'De Focus Fitness Jet 2 is de ideale loopband voor de thuissporter. Deze compacte loopband beschikt over verschillende voorgeprogrammeerde programma\'s, heeft een stille motor en is handmatig verstelbaar in twee verschillende hoogtes. Na afloop van je training is hij eenvoudig op te klappen!\r\n\r\n', 4),
(64, 'Loopband - Gymost Endurance EN3', 'categories/loopband/lo6.jpeg', 'De Endurance EN3 loopband van Gymost is een high end loopband, voorzien van een krachtige 5 PK sterke AC motor welke zich uitermate goed leent voor professionele doeleinden. De krachtige motor in combinatie met het gewicht van de loopband zorgt er voor dat de loopband enorm stabiel is. De demping van de loopband is een combinatie van elastische kussens en een gepatenteerd kussen systeem.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `stars` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` enum('member','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openingstijden`
--
ALTER TABLE `openingstijden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `openingstijden`
--
ALTER TABLE `openingstijden`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
