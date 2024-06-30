-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 30 2024 г., 19:40
-- Версия сервера: 5.6.51
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookstore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id_author`, `name`, `patronymic`, `surname`) VALUES
(1, 'Иван', 'Иванович', 'Иванов'),
(2, 'Петр', 'Петрович', 'Петров'),
(3, 'Анна', 'Анатольевна', 'Сидорова'),
(4, 'Екатерина', 'Александровна', 'Петрова'),
(5, 'Алексей', 'Андреевич', 'Смирнов'),
(6, 'Мария', 'Игоревна', 'Кузнецова'),
(7, 'Дмитрий', 'Сергеевич', 'Иванов'),
(8, 'Елена', 'Алексеевна', 'Павлова'),
(9, 'Сергей', 'Николаевич', 'Морозов'),
(10, 'Антон', 'Дмитриевич', 'Козлов'),
(11, 'Ольга', 'Владимировна', 'Новикова'),
(12, 'Николай', 'Викторович', 'Козлов'),
(13, 'Ирина', 'Андреевна', 'Соловьева'),
(14, 'Артем', 'Валентинович', 'Васнецов'),
(15, 'Юлия', 'Павловна', 'Краснова'),
(16, 'Владимир', 'Семенович', 'Кузнецов'),
(17, 'Татьяна', 'Валерьевна', 'Сидорова'),
(18, 'Григорий', 'Игоревич', 'Белов'),
(19, 'Евгения', 'Александровна', 'Иванова'),
(20, 'Александр', 'Артемович', 'Попов'),
(21, 'Анастасия', 'Ивановна', 'Смирнова'),
(22, 'Валентин', 'Григорьевич', 'Козлов'),
(23, 'Алина', 'Дмитриевна', 'Соколова'),
(24, 'Роман', 'Сергеевич', 'Морозов'),
(25, 'Евгений', 'Петрович', 'Васильев'),
(26, 'Маргарита', 'Анатольевна', 'Кузнецова'),
(27, 'Игорь', 'Николаевич', 'Петров'),
(28, 'Наталья', 'Сергеевна', 'Смирнова'),
(29, 'Артур', 'Александрович', 'Иванов'),
(30, 'Людмила', 'Владимировна', 'Соколова'),
(31, 'Виктор', 'Дмитриевич', 'Белов'),
(32, 'Ангелина', 'Валентиновна', 'Козлова'),
(33, 'Станислав', 'Григорьевич', 'Павлов'),
(34, 'Оксана', 'Артемовна', 'Краснова'),
(35, 'Аркадий', 'Игоревич', 'Соколов'),
(36, 'Елена', 'Петровна', 'Морозова'),
(37, 'Владислав', 'Алексеевич', 'Соловьев'),
(38, 'Анастасия', 'Валерьевна', 'Белова'),
(39, 'Илья', 'Игоревич', 'Кузнецов'),
(40, 'Алена', 'Викторовна', 'Новикова'),
(41, 'Глеб', 'Дмитриевич', 'Попов'),
(42, 'Тамара', 'Артемовна', 'Козлова'),
(43, 'Всеволод', 'Валентинович', 'Сидоров'),
(44, 'Екатерина', 'Сергеевна', 'Соколова'),
(45, 'Максим', 'Александрович', 'Морозов'),
(46, 'Елизавета', 'Николаевна', 'Петрова'),
(47, 'Даниил', 'Алексеевич', 'Смирнов'),
(48, 'Алиса', 'Викторовна', 'Иванова'),
(49, 'Игнат', 'Артемович', 'Соколов'),
(50, 'Милана', 'Владимировна', 'Кузнецова');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_book` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_publisher` int(11) NOT NULL,
  `year_of_publication` year(4) NOT NULL,
  `number_of_pages` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id_book`, `id_category`, `name_book`, `id_author`, `id_publisher`, `year_of_publication`, `number_of_pages`, `price`, `description`) VALUES
(1, 11, 'Пленники воображения', 48, 3, 1999, 222, 222, ' книга о пяти друзьях, которые попадают в параллельный мир, где их фантазии оживают'),
(2, 21, 'Тайна затерянного города', 6, 1, 1999, 900, 1000, 'роман-детектив о группе археологов, которые исследуют загадочный город, затерянный в джунглях'),
(3, 24, 'Сны облетевшей птицы', 3, 14, 1999, 500, 500, 'философская книга о приключениях молодого человека, который ищет свое место в мире.'),
(4, 7, 'Записки времени', 6, 6, 2005, 1000, 5000, 'фантастическая история о путешествии во времени и его последствиях.'),
(5, 22, 'Легенда о прозрачном короле', 35, 6, 2009, 1990, 6000, 'эпическая сага о противостоянии добра и зла в вымышленном королевстве.'),
(6, 2, 'Путь к истине', 40, 18, 2004, 2000, 6000, 'саморазвитие и самопознание героя, который покидает комфортную зону, чтобы следовать своей судьбе.'),
(7, 17, 'Голоса забытых', 35, 4, 2000, 2009, 2000, 'мистический триллер о местном городке, который таят секреты прошлого.'),
(8, 15, 'Жизненные пешие прогулки', 23, 16, 2000, 2000, 2000, 'легкая и веселая книга о приключениях героев во время путешествий по разным странам.'),
(9, 14, 'Спасение в морской пучине', 45, 19, 2000, 2000, 2000, 'документальное повествование о выживании после кораблекрушения на необитаемом острове.'),
(10, 15, 'Исцельческие травы и секреты здоровья', 38, 1, 2000, 2000, 2000, 'практическое руководство по использованию растений для лечения и поддержания здоровья.');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `name_сategory` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_categories`, `name_сategory`) VALUES
(1, 'Фантастика'),
(2, 'Детектив'),
(3, 'Роман'),
(4, 'Поэзия'),
(5, 'Фэнтези'),
(6, 'Научно-популярная литература'),
(7, 'Драма'),
(8, 'Приключения'),
(9, 'Ужасы'),
(10, 'Исторический роман'),
(11, 'Классика'),
(12, 'Биография'),
(13, 'Психология'),
(14, 'Мистика'),
(15, 'Комедия'),
(16, 'Триллер'),
(17, 'Документальная литература'),
(18, 'Философия'),
(19, 'Мифология'),
(20, 'Политика'),
(21, 'Спорт'),
(22, 'Наука и образование'),
(23, 'Религия'),
(24, 'Техническая литература'),
(25, 'Юмор');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_phone_surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id_client`, `name`, `patronymic`, `surname`, `address`, `number_phone_surname`) VALUES
(1, ' Иван', ' Петрович', ' Иванов', '', ' 1234567890'),
(2, ' Алексей', ' Андреевич', ' Смирнов', '', ' 9876543210'),
(3, ' Елена', ' Сергеевна', ' Кузнецова', '', ' 6745123890'),
(4, ' Дмитрий', ' Владимирович', ' Попов', '', ' 9087654321'),
(5, ' Ольга', ' Александровна', ' Васильева', '', ' 7654321098'),
(6, ' Анатолий', ' Петрович', ' Соколов', '', ' 9876543210'),
(7, ' Екатерина', ' Николаевна', ' Морозова', '', ' 8765432109'),
(8, ' Андрей', ' Иванович', ' Новиков', '', ' 5432109876'),
(9, ' Александр', ' Дмитриевич', ' Морозов', '', ' 8901234567'),
(10, ' Ирина', ' Алексеевна', ' Смирнова', '', ' 4567890123'),
(11, ' Егор', ' Владимирович', ' Волков', '', ' 9012345678'),
(12, ' Татьяна', ' Андреевна', ' Казакова', '', ' 2345678901'),
(13, ' Владимир', ' Александрович', ' Николаев', '', ' 7890123456'),
(14, ' Мария', ' Ивановна', ' Попова', '', ' 0123456789'),
(15, ' Никита', ' Дмитриевич', ' Ефимов', '', ' 6789012345'),
(16, ' Анастасия', ' Сергеевна', ' Алексеева', '', ' 3456789012'),
(17, ' Алексей', ' Григорьевич', ' Медведев', '', ' 9012345678'),
(18, ' Оксана', ' Ивановна', ' Петрова', '', ' 0987654321'),
(19, ' Федор', ' Константинович', ' Соколов', '', ' 7890123456'),
(20, ' Варвара', ' Алексеевна', ' Козлова', '', ' 8765432109'),
(21, ' Сергей', ' Денисович', ' Лебедев', '', ' 5432109876'),
(22, ' Алена', ' Александровна', ' Павлова', '', ' 8901234567'),
(23, ' Илья', ' Сергеевич', ' Семенов', '', ' 4567890123'),
(24, ' Марина', ' Викторовна', ' Григорьева', '', ' 9012345678'),
(25, ' Николай', ' Иванович', ' Богданов', '', ' 2345678901'),
(26, ' Анастасия', ' Петровна', ' Воробьева', '', ' 6789012345'),
(27, ' Денис', ' Алексеевич', ' Федоров', '', ' 3456789012'),
(28, ' Артем', ' Владимирович', ' Михайлов', '', ' 9012345678'),
(29, ' Екатерина', ' Андреевна', ' Жукова', '', ' 0987654321'),
(30, ' Иван', ' Дмитриевич', ' Кузьмин', '', ' 7890123456'),
(31, ' Виктория', ' Александровна', ' Кравченко', '', ' 6789012345'),
(32, ' Дмитрий', ' Васильевич', ' Белов', '', ' 1234567890'),
(33, ' Алиса', ' Николаевна', ' Медведева', '', ' 9876543210'),
(34, ' Павел', ' Иванович', ' Романов', '', ' 5678901234'),
(35, ' Алевтина', ' Дмитриевна', ' Антонова', '', ' 8901234567'),
(36, ' Максим', ' Валерьевич', ' Беляев', '', ' 4567890123'),
(37, ' Анастасия', ' Алексеевна', ' Полякова', '', ' 9012345678'),
(38, ' Глеб', ' Даниилович', ' Кондратов', '', ' 3456789012'),
(39, ' София', ' Владимировна', ' Сорокина', '', ' 8901234567'),
(40, ' Виталий', ' Андреевич', ' Ковалев', '', ' 5678901234');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `status_order` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_amount` decimal(10,0) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_book`, `date_order`, `status_order`, `order_amount`, `id_client`) VALUES
(17, 6, '2023-12-13', 'True', '20', 2),
(18, 4, '2023-12-15', 'True', '20', 14),
(19, 2, '2023-12-10', 'True', '20', 14),
(20, 7, '2023-12-24', 'True', '20', 15),
(21, 10, '2023-12-19', 'True', '20', 22),
(22, 10, '2023-12-13', 'True', '20', 14),
(23, 10, '2023-12-11', 'True', '20', 24),
(24, 6, '2023-12-14', 'True', '20', 9),
(25, 3, '2023-12-21', 'true', '20', 14),
(26, 5, '2023-12-21', 'True', '20', 36),
(27, 10, '2023-12-20', 'True', '20', 25),
(28, 8, '2023-12-13', 'True', '20', 15),
(29, 8, '2023-12-10', 'True', '20', 24),
(30, 10, '2023-12-25', 'True', '20', 35),
(31, 8, '2023-12-11', 'True', '20', 15),
(32, 7, '2023-12-11', 'True', '20', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `publishers`
--

CREATE TABLE `publishers` (
  `id_publisher` int(11) NOT NULL,
  `name_publisher` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `publishers`
--

INSERT INTO `publishers` (`id_publisher`, `name_publisher`, `address`, `phone_number`) VALUES
(1, 'Fictional Publishing', '123 Imaginary St, Fantasyland', '+123-456-7890'),
(2, 'DreamBooks Ltd.', '456 Dream Ave, Wonderland', '+987-654-3210'),
(3, 'Enchanted Press', '789 Magic Lane, Enchanted Kingdom', '+111-222-3333'),
(4, 'Whimsical Publishers', '567 Fairy Tale Blvd, Mythica', '+444-555-6666'),
(5, 'Epic Adventures Publ', '789 Heroic Road, Adventureland', '+777-888-9999'),
(6, 'Mystical Books Inc.', '101 Enigma Street, Mystique City', '+333-222-1111'),
(7, 'FantasyFables Printe', '234 Dreamers Lane, Dreamworld', '+666-777-8888'),
(8, 'Wondrous Words Publi', '876 Enchanting Circle, Magicland', '+555-444-3333'),
(9, 'Fairytale Publicatio', '321 Fantasy Road, Enchantmentville', '+999-888-7777'),
(10, 'WhizBang Books', '432 Wonderland Avenue, Whimsyville', '+222-333-4444'),
(11, 'Magical Manuscripts ', '654 Mystic Blvd, Enchanted Forest', '+888-999-0000'),
(12, 'Imagination Ink', '789 Wonderland Square, Fantasyland', '+777-666-5555'),
(13, 'Mythical Publication', '987 Enchanted Lane, Mythos', '+444-333-2222'),
(14, 'Dreamy Novels Ltd.', '876 Fantasy Street, Dreamville', '+111-000-9999'),
(15, 'Enigma Press', '543 Mystery Blvd, Enigmatown', '+555-666-7777'),
(16, 'Fantastic Fiction Pu', '234 Fantasy Square, Fantastic City', '+888-777-6666'),
(17, 'Whispering Woods Boo', '345 Enchanted Trail, Whispering Woods', '+222-111-0000'),
(18, 'Fanciful Tales Print', '876 Dreamers Circle, Fancifuland', '+999-000-1111'),
(19, 'Mystic Legends Publi', '765 Magic Square, Mysticville', '+333-444-5555'),
(20, 'Ethereal Editions', '321 Enchanted Circle, Ethereal City', '+666-555-4444');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `text_review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id_review`, `id_book`, `id_client`, `text_review`, `score`) VALUES
(1, 6, 40, 'Круто весело', 10),
(2, 4, 25, 'Круто весело', 12),
(3, 4, 25, 'Круто весело', 12),
(4, 10, 6, 'Круто весело', 12),
(5, 3, 18, 'Круто весело', 12),
(6, 8, 14, 'Круто весело', 12),
(7, 4, 25, 'Круто весело', 12),
(8, 7, 22, 'Круто весело', 12),
(9, 1, 9, 'Круто весело', 12),
(10, 2, 14, 'Круто весело', 12),
(11, 6, 18, 'Круто весело', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id_shopping_cart` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shopping_carts`
--

INSERT INTO `shopping_carts` (`id_shopping_cart`, `id_book`, `id_client`, `quantity`) VALUES
(1, 6, 17, 12),
(2, 9, 18, 12),
(3, 6, 22, 12),
(4, 5, 25, 12),
(5, 3, 15, 12),
(6, 8, 25, 12),
(7, 5, 8, 12),
(8, 9, 25, 12),
(9, 9, 18, 12),
(10, 4, 15, 12),
(11, 9, 25, 12),
(12, 9, 25, 12),
(13, 1, 18, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_author` (`id_author`) USING BTREE,
  ADD KEY `id_category` (`id_category`) USING BTREE,
  ADD KEY `id_publisher` (`id_publisher`) USING BTREE;

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_book` (`id_book`);

--
-- Индексы таблицы `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id_publisher`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_client` (`id_client`);

--
-- Индексы таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id_shopping_cart`),
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id_publisher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id_shopping_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`id_publisher`) REFERENCES `publishers` (`id_publisher`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_categories`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_carts_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
