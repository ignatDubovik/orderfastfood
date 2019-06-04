-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2019 at 11:54 AM
-- Server version: 5.6.41
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Бургеры', 1, 1),
(2, 'Пиццы', 2, 1),
(3, 'Салаты', 3, 1),
(4, 'Напитки', 4, 1),
(5, 'Десерты', 5, 1),
(7, 'Соусы', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `price`) VALUES
(1, 'Свинина', 2.9),
(2, 'Говядина', 2.4),
(4, 'Курица', 1.8),
(5, 'Бекон', 2),
(6, 'Сыр', 1),
(7, 'Лук', 0.8),
(8, 'Перец', 1.2),
(9, 'Огурцы свежие', 0.5),
(10, 'Огурцы соленые', 0.5),
(11, 'Помидоры', 0.7),
(12, 'Кетчуп', 0.3),
(13, 'Майонез', 0.3),
(14, 'Горчица', 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Интернет-магазин открывается!', '0000-00-00 00:00:00', 'жыаоыдалофы', 'нггшщоитлфыадщуцзшраотфцыжадлфыдлатубьаицолфгцщыалод', 'Игнатик', '', 'новости сайта');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `category_id`, `code`, `availability`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Черный бургер', 'черныйбургер.jpg', 'Какое-то описание черного бургера\r\nБлэкСтарМафия презентед!', 11, 1, 1, 1, 1, 1, 1),
(3, 'Пицца \"Мясная\"', 'мясная.jpg', 'цфваувыпавпаваыпвапапав', 14, 2, 1, 1, 1, 1, 1),
(5, 'Красный бархат', '', 'Шикарный праздничный торт \"Красный бархат\" - настоящее украшение застолья! Божественный вкус и невероятная нежность.', 10, 5, 1, 1, 0, 1, 1),
(6, 'Тирамису', '', '«Наполеон» — тот же мильфей, только в формате торта. Mille-feuilles по-французски означает «тысяча слоев», то есть многослойный десерт из множества слоев тонкого теста.', 9, 5, 1, 1, 1, 1, 1),
(7, 'Пицца \"Пеперрони\"', '', 'Сухие дрожжи, мука пшеничная, вода, сахар, соль, масло растительное, салями, лук репчатый, томатный соус, сушеный базилик, сыр сулугуни. ', 20, 2, 1, 1, 1, 1, 1),
(8, 'Пицца \"4 сезона\"', '', 'Почему пиццу назвали «4 сезона»? Просто на лепёшке из теста, разделённой на 4 сектора, повар разложил сразу 4 начинки, каждая из которых напоминала ему о конкретном времени года.', 30, 2, 1, 1, 1, 1, 1),
(9, 'Бургер с беконом', '', 'Бигбургер - один из самых ярких представителей фаст-фуда, который пользуется особой популярностью у ценителей продукции нашей сети.', 15, 1, 1, 1, 1, 1, 1),
(10, 'Бигтейсти', '', 'Чего только нет в составе капецбургера!', 20, 1, 0, 1, 1, 1, 1),
(11, 'Салат ', '', ' Восхитительный салат из помидоров, огурцов, феты, шалота и маслин, заправленный оливковым маслом с солью, чёрным перцем, орегано.', 15, 3, 1, 1, 0, 1, 1),
(12, 'Салат \"Цезарь\"', '', 'Популярный салат, одно из самых известных блюд североамериканской кухни. В классической версии основными ингредиентами салата являются пшеничные крутоны, листья салата ромэн и тёртый пармезан, заправленные особым соусом.', 20, 3, 1, 1, 1, 1, 1),
(13, 'Салат с креветками', '', 'Любимое блюдо соавтора сайта.', 50, 3, 1, 1, 0, 1, 1),
(14, 'Торт \"Наполеон\"', '', 'Классика жанра. Приготовление этого десерта может варьироваться в зависимости от ваших вкусовых предпочтений.', 13, 5, 1, 1, 0, 1, 1),
(15, 'Чесночный', '', '', 1, 7, 1, 1, 0, 1, 1),
(16, 'Барбекю', '', '', 2, 7, 1, 1, 0, 1, 1),
(17, 'Кетчуп', '', '', 1, 7, 1, 1, 0, 1, 1),
(18, 'Сырный', '', '', 1, 7, 1, 1, 0, 1, 1),
(19, 'Кисло-сладкий', '', '', 1, 7, 1, 1, 0, 1, 1),
(20, 'Малибу', '', 'ромосодержащий спиртной напиток, изготавливаемый на Барбадосе с натуральным экстрактом кокосовых пальм. Содержит 21,0 объёмных процентов спирта. Изысканный вкус и аромат кокоса делают напиток одним из любимейших во всем мире!', 100, 4, 1, 1, 1, 1, 1),
(21, 'Мохито', '', 'Коктейль на основе светлого рома и листьев мяты. Происходит с острова Куба, стал популярен в США в 1980-х.', 20, 4, 1, 1, 0, 1, 1),
(22, 'Молочный коктейль', '', 'Десертный напиток на основе молока и мороженого. Для придания коктейлю различных вкусов в него добавляют сиропы, варенья, фрукты, взбитые сливки, кремы, тёртый шоколад и др. пищевые компоненты.', 12, 4, 1, 1, 0, 1, 1),
(23, 'Фанта', '', 'Я не люблю \"Фанту\", поэтому не хочу добавлять описание.', 5, 4, 1, 1, 0, 1, 1),
(25, 'Спрайт', '', 'Газированный безалкогольный напиток, со вкусом лайма и лимона, принадлежащий американской компании The Coca-Cola Company. Изначально Спрайт позиционировался как содовая со вкусом лимона.', 5, 4, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(1, 'dontcare', '375114857564', '', 2, '2018-10-28 11:25:21', '{\"1\":4,\"2\":2}', 4),
(2, 'dontcare', '853457685423468', '', 2, '2018-11-20 12:39:38', '{\"4\":1}', 1),
(3, 'fghjk', '8541226547', '', 0, '2019-05-29 06:59:14', '{\"24\":2,\"20\":1}', 1),
(4, 'Кристина', '+375291254795', '', 0, '2019-06-02 18:08:52', '{\"20\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'ignatik', 'askfna@mail.ru', '123456', NULL),
(2, 'dontcare', 'dontcare@fs.df', '123456', NULL),
(3, 'kdkasfn', 'dsklfj@kfdsl.re', '45872136', NULL),
(4, 'Игнат', 'ignatdubovik@mail.ru', '987654321', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
