-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 08 Janvier 2018 à 15:44
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.1.12-1+0~20171129100550.11+stretch~1.gbp8ded15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lpGroupe3_Y`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `hitcount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `media_id`, `title`, `summary`, `content`, `hitcount`, `created_at`, `updated_at`) VALUES
(10, 1, 29, 'The comeback of barbecuing', 'The Big Bad BBQ on the grill', 'Most of you, when you hear the world « Barbecue », think of the holy trinity of sausages, merguez and meat skwewers, probably gulped with a fresh pint of your favorite beer.\r\nBut please, take a seat, kick back and relax, because I’m about to tell you about the ways of grilling food over charcoal.\r\n\r\nWhen most of us, impish that we are, are just throwing meat directly from the package to the grill, you ought to know about that smoking trend. It could change your life by adding a whole new level of flavours to your sunny outside meals. Smoking meat is an ancient and delicious craft which is easier that most people think, and that can trigger your creativity. There is infinite possibilities of mixing ingrediends, spices and species of woods. There is no need of an expensive equipment and the use of space is minimal. This craft takes time to be mastered but is certainly worth the  try. Think about it.\r\n\r\nSome might say that meat always tastes the same, from one BBQ to an other. That’s where they are wrong, but now that you are reading this article, you will be able to prove it to them. By the holy power ot the marinade, you will become the apostle of juicy and melting meat. Marinade is as simple as it sounds : you just need to mix your sauces and spices in a container , then add the pieces of meat in the pan. And wait. Yes, just wait for at least a few hours, or even a whole night if you’re not in a hurry. Tadaa ! You have made your own marinade, and you deserve a nice meal, surrounded by your loved ones, who won’t miss the opportunity to congratulate you for your cooking gift.\r\n\r\nBut as you know, you can find tasty treats not only on land, but also underwater or on beaches. Have you ever thought about grilling some tuna or some sardines on your beloved BBQ? I bet you didn’t. But it is a well known recipe in the european areas located next to the seas. Every now and then they throw some fish and seafood on the grill and I have to tell you, it is quite unique and, of course, exquisite. The salt contained in the flesh of fishes, permit to give it a spicy and salty flavour. Total dislcaimer : it goes perfectly with some potato salad and an good glass of white wine (a french one, of course…). Shellfish can, of course, be barbecued and the heat of the burning charcoal makes it very easy for us foodies to remove their shiny armor which is pretty helpful.\r\n\r\nI do hope that this little article opened your eyes on these new trends of barbecuing and, more important, made you want to try something a little bit different the next time you’ll host a grill party in your backyard, with friends, family or your significant other.', 25, '2017-12-21 18:51:08', '2017-12-21 18:51:08'),
(11, 1, 30, 'La folie food-truck', 'Régalez-vous sur votre trottoir !', 'Il y a fort à parier que vous ayez vu fleurir dans votre ville, ces étranges véhicules fumants stationnés sur les trottoirs. En effet,tout droit venue des Etats-Unis, la folie food-truck s’est emparée de notre quotidien afin de satisfaire vos papilles exigeantes et en recherche de nouvelles saveurs.\r\nCes étranges camionnettes sont équipées de tout le nécessaire pour vous cuisiner des plats pouvant aller de la barquette de frites la plus simple au met le plus sophistiqué.\r\nMais pourquoi choisir un food-truck ?\r\nFréquenter un food-truck présente de nombreux avantages. C’est en effet un excellent moyen d’allier convivialité, économies pécuniaires et découvertes gustatives. De plus, le food-truck, de par sa mobilité, permet aux cuisiniers volants de poser leurs valises dans des endroits insolites tout en offrant aux consommateurs la possibilité de changer de restaurant chaque jour sans changer d’endroit.\r\nSoyons clairs, il existe maintenant des food-trucks pour tous les plats possibles et inimaginables. Ainsi, les consommateurs ne faisant pas forcément la démarche de découvrir de nouvelles saveurs le feront plus volontiers si ces saveurs viennent à eux. \r\nSouvent situé dans des zones fourmillantes d’activité, les food-trucks offrent une excellente alternative aux cantines traditionnelles, au sandwich d’autoroute ou aux plats préparés. Ainsi, il est plus facile pour les travailleurs de se sustenter avec des produits de qualité, tout en échangeant un moment convivial avec ses collègues.\r\nIl arrive très souvent que les cartes des food-trucks soient relativement courtes et changent régulièrement, permettant ainsi un renouveau des plats proposés et toujours plus de découvertes et d’innovations.\r\nEnfin, l’attrait de ces cantines roulantes, peut également résider dans le fait que, même si la majorité de ces micro-entreprises a une route hebdomadaire définie, leur route peut varier selon les saisons, et ainsi créer un effet de surprise quant à leur présence dans la durée…Profitez donc de votre food-truck favori tant qu’il en est encore temps !', 434, '2017-12-21 19:02:30', '2017-12-21 19:02:30'),
(12, 1, 31, 'Vous avez-dit \"Sans Glu\"?', 'Le régime des intolérants au gluten', 'Mais que se cache derrière cette expression se trouvant dans plus en plus de bouches ? Le « Sans glu »  (pour « Sans –gluten ») est une nouvelle tendance de consommation visant à diminuer, voire à supprimer totalement de son alimentation le gluten, cet ensemble de protéines contenues dans de nombreuses céréales.\r\nMais pourquoi ? \r\nHé bien tout simplement pour des raisons de santé. En effet, depuis quelques temps, on observe une recrudescence de l’intolérance au gluten, autrement appelée maladie coéliaque, qui touche près de 2% de la population. Celle-ci se caractérise par une inflammation chronique de l’intestin grêle et entraîne donc une succession de symptômes liés à l’appareil digestif (diarrhées, douleurs, balonnements…). Ainsi, en supprimant toute trace de gluten dans leur nourriture, les personnes souffrant de cette affection chronique différant quelques peu de l’allergie, se prémunissent de ces effets secondaires indésirables, pouvant avoir des conséquences graves sur leur santé.\r\n\r\nIl est tout de même extrêmement important de noter que seules les personnes atteintes de cette intolérance se doivent de suivre un tel régime sous peine de voir le risque de maladies cardiaques augmenter.\r\n\r\nLa difficulté à maintenir une alimentation sans gluten réside dans le fait que ces protéines sont omniprésentes dans les process de fabrication de l’industrie agroalimentaire. Evidemment, vous aurez compris que les plats préparés industriels sont à proscrire…Aussi, les « sans glu », se résolvent souvent à mettre la main à la pâte et à cuisiner eux-mêmes. De nombreuses farines « alternatives » sont vendues en grande surface ou en magasin bio. En les mélangeant, il est possible de trouver l’équilibre parfait qui vous siéra le mieux en termes de goût et de texture. Vous l’aurez compris, dans le régime sans gluten, tout est question d’adaptation et d’ingéniosité.\r\nAinsi, de nombreux cuistots en herbe ont développé des recettes adaptées à leurs contraintes, pour prendre soin de leur santé, tout en se faisant plaisir…Evidemment, si vous manquez d’imagination, n’hésitez pas à visiter la rubrique recette de notre site, vous devriez y trouver votre bonheur !', 5, '2017-12-21 19:04:56', '2017-12-21 19:04:56');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `recipe_id`, `content`, `created_at`, `updated_at`) VALUES
(20, 1, 14, 'Génial !', '2017-12-21 19:09:35', '2017-12-21 19:09:35'),
(21, 1, 1, 'MIAM!', '2017-12-21 19:09:53', '2017-12-21 19:09:53'),
(22, 2, 1, 'test Bite', '2017-12-21 19:29:29', '2017-12-21 19:29:29'),
(23, 2, 1, 'propre', '2017-12-21 19:29:38', '2017-12-21 19:29:38'),
(26, 1, 10, 'j\'ai échangé les lardons par du jambons et c\'est pas mal du tout !', '2017-12-22 15:42:23', '2017-12-22 15:42:23'),
(27, 1, 16, 'Génial !', '2017-12-22 17:15:19', '2017-12-22 17:15:19');

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `medias`
--

INSERT INTO `medias` (`id`, `title`, `path`, `type`) VALUES
(1, 'un titre', '47f3cf886b8e99a3503417c1888c47dc.jpeg', 'image/jpeg'),
(2, 'pizza', '53e069ae4534187f0faf147f215c9948.jpeg', 'image/jpeg'),
(3, 'phpHrFbN0', '50aba3ad2065926e3c892d1b097981da.jpeg', ''),
(4, 'phpXlimPg', '26ac660ce3737fd35b957e22d6330a86.jpeg', ''),
(5, 'phpsvjnjT', 'ccd1ee784211f6d51c7ac34ddb420553.jpeg', 'file'),
(6, 'phpRjVm9g', '1ec300b872d567886e0475f15d275d10.jpeg', 'file'),
(7, 'phpHoPAhV', '30faf2f0137d5cf5ffe77b47c95f8b95.jpeg', 'file'),
(8, 'phpDWyYIN', 'efff5c1ec00705f1cfbae722a96b003b.jpeg', 'file'),
(9, 'phpn2BEHq', 'ed194bc7a6905236cab1609016ac5c0b.jpeg', 'file'),
(10, 'phpC1mEVL', '0a5e599f7b79605cd4c33e78c31dacb8.jpeg', 'file'),
(11, 'phpqQBQe3', '544efb5f4b8cb69f425b119653d8c476.jpeg', 'file'),
(12, 'phpwZ9kCl', 'ce2e185b11efa6c6ff5fd6f0e857baa9.jpeg', 'file'),
(13, 'phpato1Ch', '0a9765b2d709f1e03acb53050ebb0f73.jpeg', 'file'),
(14, 'phpFK4nSd', 'bed3857904836ff8e81dd58d3d76ecd9.jpeg', 'file'),
(15, 'phpiUm5w0', 'd8a978dc9faba3949fc09d5c59fd9739.jpeg', 'file'),
(16, 'phpZQyO78', 'ef716829c3803ffd818bf54bead6d143.jpeg', 'file'),
(17, 'phpmuEdEO', 'e10884d775441af7da0690ec5929d9ad.jpeg', 'file'),
(18, 'phpm60C5Z', '1977bd44b441fdf14715d91d5b7d508f.jpeg', 'file'),
(19, 'phpZVCxAQ', 'b9a7ef331d2c542ce35122a3beec6c44.jpeg', 'file'),
(20, 'phpCfZiec', '0a85fa0d657bb1168eeeb3ffffe200d2.png', 'file'),
(21, 'php05F9mX', '558b9d9848d6c38c2eae5e8e205c520b.jpeg', 'file'),
(22, 'phpteOmUf', 'ed09f3cc254d98bd65e0834f932da4d5.jpeg', 'file'),
(23, 'phpjrsAkb', '19e09b9d4735cfe4cf3817f984335fd0.jpeg', 'file'),
(24, 'phpRg8jh6', 'c5cd1df76b9b3bb22c5297918a37002a.jpeg', 'file'),
(25, 'phpLYhH0I', 'b699dff10ab23c653e86f5793d4de306.jpeg', 'file'),
(26, 'phpnpwB1c', '8ce11706bb2bd1082d28bc4d0bdb772b.jpeg', 'file'),
(27, 'phpbVanjT', 'bfb3b23f404227cb5c50649f45b4478b.jpeg', 'file'),
(28, 'phpRI5RBh', 'e4263baa14cf18f34a13d665de65810c.jpeg', 'file'),
(29, 'php0RWbbJ', 'dfe1e0321127bef4532634c9f1de9245.jpeg', 'file'),
(30, 'phpFLa615', '1ae02497118a79afb61458b709c5f3d8.jpeg', 'file'),
(31, 'phpGYt5sz', 'fa160dc7adda19b4821abc42344fa6bd.jpeg', 'file'),
(32, 'phpI3yNhL', '0950539a56330de0b6fa1bf2707a32be.jpeg', 'file'),
(33, 'phpoa4svX', '36bb2368bc10abca821d6d850bfe0915.jpeg', 'file'),
(34, 'phpsJUvD4', 'c4a9a3b293f05a0413790ee966950af3.jpeg', 'file'),
(35, 'phpSLd7Db', 'eea28531131f79ff57a57aad2b806885.jpeg', 'file'),
(36, 'phprMTV9Q', '4617b1411ad731af12ede2ed5696a0cd.jpeg', 'file');

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `steps` text COLLATE utf8_unicode_ci,
  `ingredients` text COLLATE utf8_unicode_ci,
  `difficulty` tinyint(4) DEFAULT NULL,
  `preparation_time` time NOT NULL,
  `cooking_time` time NOT NULL,
  `materials` text COLLATE utf8_unicode_ci,
  `astuce` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `recipes`
--

INSERT INTO `recipes` (`id`, `media_id`, `name`, `steps`, `ingredients`, `difficulty`, `preparation_time`, `cooking_time`, `materials`, `astuce`, `created_at`, `updated_at`, `description`) VALUES
(1, 21, 'Pizza', '* Préparation de la pâte : eau, sel, farine de blé type 00 (dénomination italienne correspondante en France à la T55), levure. On mélange, on forme des boules grosses comme le poing et on laisse reposer à température ambiante trois à quatre heures minimum.\r\n* Préparation de la pizza : on étale chaque boule de préférence à la main (car le rouleau écrase les bulles d\'air dans la pâte) sur laquelle on place les ingrédients.\r\n* Cuisson : au four à feu de bois environ 1 minute de cuisson à 400 °C.\r\n\r\nPar exemple pour la pizza Margherita, la plus simple : une cuillère à soupe de tomates, de la mozzarella écrasée avec les mains, une ou deux feuilles de basilic frais, un soupçon d\'huile d\'olive, au four, et à consommer rapidement.', '- 1 pâte à pizza \r\n- 1 fromage de chèvre long \r\n- 1 petit pot coulis de tomate \r\n- 1 roquefort\r\n- 1 petit sachet mozzarella\r\n- 1 sachet gruyère râpé\r\n- Poivre \r\n- Sel', 1, '00:10:00', '00:40:00', '- 1 four\r\n- 1 fourchette\r\n- 1 rouleau à pâtisserie\r\n- 1 couteau\r\n- 1 râpe\r\n- 1 couvercle', 'Cela fait une bonne pizza avec une bonne épaisseur ; se mange facilement pour ceux qui aiment les fromages. On peut la faire avec n\'importe quel fromage. En général, elle a du succès.', '2017-12-11 08:06:24', '2017-12-11 08:06:41', 'Une bonne pizza pour l\'amitié'),
(9, 14, 'Croc Monsieur', '* Beurrez votre pain de mie\r\n* Ajoutez votre jambon ainsi que votre fromage entre 2 tranche de pain\r\n* Chauffez le croc Monsieur dans une machine prévu à cet effet.\r\n* Dégustez', '* Pain du Mie\r\n* Jambon\r\n* Emmental\r\n* Beurre', 0, '00:30:00', '00:05:00', 'Appareil à croc', 'Ajoutez votre sauce préféré après la cuisson !', '2017-12-21 17:07:35', '2017-12-21 17:07:35', 'Pour un croc monsieur, simple, savoureux & intense avec de l\'emmental affiné et du jambon'),
(10, 15, 'Tartiflette', '* Cuire vos pommes de terre à l\'eau\r\n* Coupez vos pommes de terre en fines tranche\r\n* Cuire oignions et lardons dans une poêle\r\n* Mélangez le tout en ajoutant des tranches de Reblochon sur l\'ensemble de votre plat', '* lardons\r\n* Pommes de terre\r\n* Reblonchon', 0, '01:00:00', '02:00:00', '* Four\r\n* Casserole & plaque chauffante', 'Ajoutez de la crème liquide !', '2017-12-21 17:15:17', '2017-12-21 17:15:17', 'Une tartiflette, plat montagnard à base de reblochon. Sensation garantie !'),
(11, 22, 'Glace aux amandes', '* Congelez du lait avec un bâton\r\n* Ajoutez de la Chantilly\r\n* Collez des Amandes', '* Lait\r\n* Amande', 2, '00:10:00', '02:00:00', 'Bâton\r\nCongelateur', 'A dégustez très frais !', '2017-12-21 17:28:45', '2017-12-21 17:28:45', 'Un Glace faite maison, pour un rafraichissement assuré & un plaisir d\'antan'),
(14, 19, 'Donuts', '* Faire de la pâte de la beignez', '* Sucre Glacé\r\n* Pâte\r\n* Oeuf\r\n* Farine\r\n* Lait\r\n* Huile\r\n* Bière', 3, '02:00:00', '00:15:00', '* Friteuse\r\n* Fouet', 'Commencez par mangez le trou !', '2017-12-21 17:35:02', '2017-12-21 17:35:02', 'Tout est bon même le trou !'),
(16, 36, 'Marathon Web', '- Réunion pour découvrir le sujet\r\n- Planifier le développement\r\n- Coder\r\n- Intégrer\r\n- Pleurer\r\n- Réintégrer\r\n- Manger\r\n- Coder\r\n- Ne pas dormir\r\n- Troller un groupe\r\n- Rigoler (mais pas longtemps)\r\n- Continuer de coder\r\n- Présenter le projet', '- Du café\r\n- Encore du café\r\n- Un peu de RedBull / Coca Cola\r\n- Toujours du café\r\n- Pizza gratuite', 5, '12:01:00', '23:59:00', '* Un réseau solide \r\n* Une équipe compétente\r\n* Un environnement sain', 'Ne pas dormir', '2017-12-22 17:14:08', '2017-12-22 17:14:08', 'Un marathon web est une bonne expérience du point de vue humain et développement');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@marathon.com', '$2y$13$oJzoxXfyFfCf6SWzCcZQA.6ZJk5zi2bjQra4kcVLJ140xl0ne6.5W', '', 1, '2017-12-10 19:14:57', '2017-12-10 19:14:57'),
(2, 'duchmol', 'duchmol@marathon.com', '$2y$13$oJzoxXfyFfCf6SWzCcZQA.6ZJk5zi2bjQra4kcVLJ140xl0ne6.5W', ' ', 0, '2017-12-10 19:14:57', '2017-12-10 19:14:57'),
(3, 'samuel', 'samuel@mail.fr', '$2y$13$wifNMmATQcFyaUdrKZvJVO1ySylGgfWiF7dJUbDRKEW8MUVJ43UTK', '', 0, '2017-12-20 08:57:43', '2017-12-20 08:57:43');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `recipe_id`, `value`) VALUES
(1, 2, 1, 5),
(5, 1, 1, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFDD3168A76ED395` (`user_id`),
  ADD KEY `IDX_BFDD3168EA9FDD75` (`media_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5F9E962AA76ED395` (`user_id`),
  ADD KEY `IDX_5F9E962A59D8A214` (`recipe_id`);

--
-- Index pour la table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A369E2B5EA9FDD75` (`media_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_518B7ACFA76ED395` (`user_id`),
  ADD KEY `IDX_518B7ACF59D8A214` (`recipe_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_BFDD3168EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962A59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `FK_A369E2B5EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`);

--
-- Contraintes pour la table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `FK_518B7ACF59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `FK_518B7ACFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
