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
-- База данных: `Avtochoz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `BRAND`
--

CREATE TABLE `BRAND` (
  `ID_BRAND` int(11) NOT NULL,
  `NAME_BRAND` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `BRAND`
--

INSERT INTO `BRAND` (`ID_BRAND`, `NAME_BRAND`) VALUES
(1, 'Audi'),
(2, 'BMV'),
(3, 'Honda'),
(4, 'Hummer'),
(5, 'Hyundai'),
(6, 'Infiniti'),
(7, 'Jeep'),
(8, 'Kia'),
(9, 'Lexus'),
(10, 'Mazda'),
(11, 'Mercedes-Benz'),
(12, 'Nissan'),
(13, 'Opel'),
(14, 'Smart');

-- --------------------------------------------------------

--
-- Структура таблицы `CARGO`
--

CREATE TABLE `CARGO` (
  `ID_CARGO` int(11) NOT NULL,
  `NAME_CARGO` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_TYPE_CARGO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CARGO`
--

INSERT INTO `CARGO` (`ID_CARGO`, `NAME_CARGO`, `ID_TYPE_CARGO`) VALUES
(1, 'Бананы', 5),
(2, 'Мебель', 4),
(3, 'Хрусталь', 12),
(4, 'Компьютры', 7),
(5, 'Пылесосы', 7),
(6, 'Кислород', 8),
(7, 'Книги', 4),
(8, 'Корма', 6),
(9, 'Вода', 2),
(10, 'Бензин', 9),
(11, 'Одежда', 6),
(12, 'Сухой бетон', 1),
(13, 'Медные листы', 14),
(14, 'Плитка', 12),
(15, 'Ткань', 13),
(16, 'Сталь', 14),
(17, 'Ковры', 13),
(18, 'Люстры', 12),
(19, 'Стекло', 3),
(20, 'Духи', 16),
(21, 'Энергетики', 4),
(22, 'Масло', 9),
(23, 'Картины', 12),
(24, 'Обои', 13),
(25, 'Трактора', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `CARGO_TYPE`
--

CREATE TABLE `CARGO_TYPE` (
  `ID_CARGO_TYPE` int(11) NOT NULL,
  `CARGO_TYPE` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CARGO_TYPE`
--

INSERT INTO `CARGO_TYPE` (`ID_CARGO_TYPE`, `CARGO_TYPE`) VALUES
(1, 'Пылевидные'),
(2, 'Жидкие'),
(3, 'Листы стекла'),
(4, 'Штучные'),
(5, 'Скоропортящиеся'),
(6, 'Негабаритные'),
(7, 'Электронная техника'),
(8, 'Газы сжатые, сжиженные и растворенные под давлением'),
(9, 'Легковоспламеняющиеся жидкости'),
(10, 'Крупно-габаритная техника'),
(11, 'Окисляющиеся вещества'),
(12, 'Хрупкие'),
(13, 'Рулоны (мягкие)'),
(14, 'Листы металла'),
(15, 'Прочее'),
(16, 'Тара с жидкостью');

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `ID_CARS` int(11) NOT NULL,
  `ID_BRAND` int(11) NOT NULL,
  `NUMBER_REGISTRATION` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TONNAGE` int(11) NOT NULL,
  `ID_CARGO_TYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`ID_CARS`, `ID_BRAND`, `NUMBER_REGISTRATION`, `TONNAGE`, `ID_CARGO_TYPE`) VALUES
(1, 1, 'АА345Б', 2000, 7),
(2, 1, 'ВВ445Б', 3000, 4),
(3, 7, 'GH345H', 1500, 5),
(4, 12, 'JY346K', 2000, 11),
(5, 4, 'BS342H', 1000, 6),
(6, 8, 'GH345J', 500, 6),
(7, 3, 'GJ527J', 4000, 14),
(8, 4, 'HG432G', 2500, 3),
(9, 6, 'GH372', 2700, 5),
(10, 6, 'HG653H', 2600, 10),
(11, 9, 'GH521', 1500, 6),
(12, 10, 'FG362G', 3000, 13),
(13, 13, 'GH342L', 4200, 6),
(14, 8, 'FG235Y', 1500, 4),
(15, 13, 'JH262J', 2400, 5),
(16, 9, 'GH309B', 1900, 9),
(17, 13, 'JG231V', 3600, 6),
(18, 2, 'FD235K', 1900, 4),
(19, 14, 'HJ301J', 2900, 6),
(20, 9, 'GH421C', 1500, 14),
(21, 10, 'GH462N', 2700, 9),
(22, 8, 'FG233N', 4900, 9),
(23, 9, 'HL237K', 7000, 4),
(24, 11, 'GK235J', 3000, 15),
(25, 10, 'HG234M', 2300, 6),
(26, 8, 'HK423Z', 2400, 4),
(27, 10, 'HJ351K', 4000, 10),
(28, 3, 'JH362O', 1500, 9),
(29, 8, 'KH352H', 2000, 9),
(30, 9, 'GH236M', 1100, 3),
(31, 9, 'GK425B', 4000, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `CLIENT`
--

CREATE TABLE `CLIENT` (
  `ID_CLIENT` int(11) NOT NULL,
  `NAME` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PHONE_NUMBER` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CLIENT`
--

INSERT INTO `CLIENT` (`ID_CLIENT`, `NAME`, `ADDRESS`, `PHONE_NUMBER`) VALUES
(1, 'Фокин', 'Ул бунова 33', '89273445463'),
(2, 'Шикин', 'Революционная 54', '98923523563'),
(3, 'Пьянзин', 'Регламентская 345', '98923527535'),
(4, 'Парфёнов', 'Доскинская 3', '98927637563'),
(5, 'Фичук', 'Поводная 743', '98947323563'),
(6, 'Донской', 'Великая 4', '89267324368'),
(7, 'Фичук', 'Регламентская 3', '89267328473'),
(8, 'Проводов', 'Мятная 73', '89265845368'),
(9, 'Листов', 'Энциклопедическая 84', '89267327481'),
(10, 'Ручкин', 'Победы 5', '89365716356'),
(11, 'Загрузкин', 'Пушкинская 7', '89365713581');

-- --------------------------------------------------------

--
-- Структура таблицы `COMMUNICATIOS`
--

CREATE TABLE `COMMUNICATIOS` (
  `ID_COMMUNICATIOS` int(11) NOT NULL,
  `ID_CARS` int(11) NOT NULL,
  `ID_DRIVERS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `COMMUNICATIOS`
--

INSERT INTO `COMMUNICATIOS` (`ID_COMMUNICATIOS`, `ID_CARS`, `ID_DRIVERS`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 4, 3),
(5, 5, 6),
(6, 6, 5),
(7, 7, 8),
(8, 8, 7),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 1),
(21, 21, 2),
(22, 22, 3),
(23, 23, 4),
(24, 24, 5),
(25, 25, 6),
(26, 26, 7),
(27, 27, 8),
(28, 28, 9),
(29, 29, 10),
(30, 30, 11),
(31, 24, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `CONTENT_CARGO`
--

CREATE TABLE `CONTENT_CARGO` (
  `ID_CONTENT_CARGO` int(11) NOT NULL,
  `ID_ORDER` int(11) NOT NULL,
  `ID_CARGO` int(11) NOT NULL,
  `QUANTITY` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WEIGHT_CARGO` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CONTENT_CARGO`
--

INSERT INTO `CONTENT_CARGO` (`ID_CONTENT_CARGO`, `ID_ORDER`, `ID_CARGO`, `QUANTITY`, `WEIGHT_CARGO`) VALUES
(1, 1, 14, '200', '2000'),
(2, 2, 22, '50', '3000'),
(3, 3, 4, '250', '2500'),
(4, 4, 7, '90', '4000'),
(5, 5, 24, '50', '200'),
(6, 1, 5, '20', '140'),
(7, 2, 2, '60', '3000'),
(8, 3, 20, '100', '4000'),
(9, 4, 1, '40', '800'),
(10, 5, 9, '1', '4000'),
(11, 6, 13, '10', '2000'),
(12, 7, 10, '1000', '1000'),
(13, 8, 24, '50', '300'),
(14, 9, 22, '30', '3000'),
(15, 10, 8, '50', '1100'),
(16, 11, 9, '2000', '2000'),
(17, 12, 4, '150', '1000'),
(18, 13, 17, '1000', '10000'),
(19, 14, 6, '500', '700'),
(20, 15, 1, '90', '700'),
(21, 16, 7, '200', '5000'),
(22, 17, 11, '90', '1500'),
(23, 12, 5, '125', '2000'),
(24, 13, 2, '30', '4000'),
(25, 14, 21, '500', '300'),
(26, 15, 20, '40', '1000'),
(27, 16, 23, '300', '600'),
(28, 17, 15, '200', '3000'),
(29, 2, 6, '120', '4000'),
(30, 3, 19, '40', '5000'),
(31, 4, 14, '60', '1200');

-- --------------------------------------------------------

--
-- Структура таблицы `DRIVERS`
--

CREATE TABLE `DRIVERS` (
  `ID_DRIVERS` int(11) NOT NULL,
  `NAME` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CATEGORY` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `EXPERIENCE` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `DRIVERS`
--

INSERT INTO `DRIVERS` (`ID_DRIVERS`, `NAME`, `CATEGORY`, `EXPERIENCE`) VALUES
(1, 'Ручкин', 'B', '3'),
(2, 'Богов', 'С', '6'),
(3, 'Фролов', 'BE', '4'),
(4, 'Великов', 'CE', '7'),
(5, 'Маскин', 'B', '15'),
(6, 'Кошкин', 'B', '4'),
(7, 'Листов', 'C', '23'),
(8, 'Осипов', 'BE', '30'),
(9, 'Петраков', 'CE', '23'),
(10, 'Мышкин', 'B', '30'),
(11, 'Фриков', 'C', '40'),
(12, 'Клюкин', 'B', '20'),
(13, 'Кошкин', 'BE', '15'),
(14, 'Светов', 'CE', '10'),
(15, 'Правин', 'BE', '23'),
(16, 'Стулов', 'CE', '32'),
(17, 'Духов', 'C', '5'),
(18, 'Маскин', 'BE', '5'),
(19, 'Ручкин', 'B', '21'),
(20, 'ВУАП', '3', '2'),
(24, '23', '23', '23'),
(25, '23', '24', '25');

-- --------------------------------------------------------

--
-- Структура таблицы `ORDER`
--

CREATE TABLE `ORDER` (
  `ID_ORDER` int(11) NOT NULL,
  `ID_COMMUNICATIOS` int(11) NOT NULL,
  `ADDRESS_DEPARTURE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS_DESTINATION` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATE_ORDER` date NOT NULL,
  `DATE_COMPLETION` date NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `ID_RATE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ORDER`
--

INSERT INTO `ORDER` (`ID_ORDER`, `ID_COMMUNICATIOS`, `ADDRESS_DEPARTURE`, `ADDRESS_DESTINATION`, `DATE_ORDER`, `DATE_COMPLETION`, `ID_CLIENT`, `PRICE`, `ID_RATE`) VALUES
(1, 5, 'Буба 23', 'биба 54', '2023-01-09', '2023-01-12', 6, 50000, 3),
(2, 2, 'Рекламная 1', 'Рекламная 2', '2023-01-01', '2023-01-03', 9, 50000, 10),
(3, 3, 'Кича 43', 'Кича 433', '2023-01-16', '2023-01-20', 11, 25000, 8),
(4, 4, 'Кирова 3', 'Кирова 23', '2023-01-09', '2023-01-18', 4, 10000, 6),
(5, 5, 'Клавина 42', 'Фифтева 45', '2023-01-16', '2023-01-25', 6, 15333, 4),
(6, 6, 'Бубнова 3', 'крюков 3', '2023-01-09', '2023-01-10', 9, 23333, 10),
(7, 8, 'Клюкиа 43', 'Рекина 2', '2023-01-10', '2023-01-11', 7, 2000, 9),
(8, 9, 'Речконо 43', 'Булькино 4', '2023-01-18', '2023-01-20', 3, 5000, 12),
(9, 10, 'Рекино 2', 'Пусьино 34', '2023-01-24', '2023-01-25', 2, 4000, 8),
(10, 11, 'ручкино 43', 'фрукина 4', '2023-01-16', '2023-01-17', 6, 23323, 6),
(11, 12, 'руськино 4', 'фриково 45', '2023-01-16', '2023-01-20', 7, 10000, 1),
(12, 13, 'Реково 45', 'Фиська 3', '2023-01-25', '2023-01-30', 4, 6000, 8),
(13, 14, 'Килов 4', 'Шкинол 4', '2023-01-03', '2023-01-11', 8, 10000, 12),
(14, 15, 'Вкино 23', 'прокино 34', '2023-01-23', '2023-01-27', 10, 100000, 6),
(15, 17, 'ролова 45', 'кидло 3', '2023-01-20', '2023-01-25', 8, 12222, 12),
(16, 18, 'кирова 3', 'шкорова 4', '2023-01-18', '2023-01-20', 4, 15055, 12),
(17, 19, 'киклова 3', 'шкилова 7', '2023-01-02', '2023-01-11', 1, 10000, 11),
(18, 22, 'коклова 23', 'шкокло 4', '2023-01-25', '2023-01-29', 5, 2000, 10),
(19, 28, 'фучева 4', 'жгучева 76', '2023-01-25', '2023-01-30', 11, 5000, 11),
(20, 29, 'Пилова 4', 'Шкилова 7', '2023-01-24', '2023-01-25', 4, 2000, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `RATE`
--

CREATE TABLE `RATE` (
  `ID_RATE` int(11) NOT NULL,
  `limitation_kg` int(11) NOT NULL,
  `SPEED` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `RATE`
--

INSERT INTO `RATE` (`ID_RATE`, `limitation_kg`, `SPEED`) VALUES
(1, 300, 'Обычный'),
(2, 300, 'Быстрый'),
(3, 500, 'Обычный'),
(4, 500, 'Быстрый'),
(5, 700, 'Обычный'),
(6, 700, 'Быстрый'),
(7, 1000, 'Обычный'),
(8, 1000, 'Быстрый'),
(9, 1500, 'Обычный'),
(10, 1500, 'Быстрый'),
(11, 2000, 'Обычный'),
(12, 2000, 'Быстрый'),
(13, 3000, 'Обычный'),
(14, 3000, 'Быстрый');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `BRAND`
--
ALTER TABLE `BRAND`
  ADD PRIMARY KEY (`ID_BRAND`);

--
-- Индексы таблицы `CARGO`
--
ALTER TABLE `CARGO`
  ADD PRIMARY KEY (`ID_CARGO`),
  ADD KEY `ID_TYPE_CARGO` (`ID_TYPE_CARGO`);

--
-- Индексы таблицы `CARGO_TYPE`
--
ALTER TABLE `CARGO_TYPE`
  ADD PRIMARY KEY (`ID_CARGO_TYPE`);

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID_CARS`),
  ADD KEY `ID_CARGO_TYPE` (`ID_CARGO_TYPE`),
  ADD KEY `ID_BRAND` (`ID_BRAND`) USING BTREE;

--
-- Индексы таблицы `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`ID_CLIENT`);

--
-- Индексы таблицы `COMMUNICATIOS`
--
ALTER TABLE `COMMUNICATIOS`
  ADD PRIMARY KEY (`ID_COMMUNICATIOS`),
  ADD KEY `ID_CARS` (`ID_CARS`),
  ADD KEY `ID_DRIVERS` (`ID_DRIVERS`);

--
-- Индексы таблицы `CONTENT_CARGO`
--
ALTER TABLE `CONTENT_CARGO`
  ADD PRIMARY KEY (`ID_CONTENT_CARGO`),
  ADD KEY `ID_CARGO` (`ID_CARGO`),
  ADD KEY `ID_ORDER` (`ID_ORDER`);

--
-- Индексы таблицы `DRIVERS`
--
ALTER TABLE `DRIVERS`
  ADD PRIMARY KEY (`ID_DRIVERS`);

--
-- Индексы таблицы `ORDER`
--
ALTER TABLE `ORDER`
  ADD PRIMARY KEY (`ID_ORDER`),
  ADD KEY `ID_CLIENT` (`ID_CLIENT`),
  ADD KEY `ID_RATE` (`ID_RATE`),
  ADD KEY `ID_COMMUNICATIOS` (`ID_COMMUNICATIOS`);

--
-- Индексы таблицы `RATE`
--
ALTER TABLE `RATE`
  ADD PRIMARY KEY (`ID_RATE`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `BRAND`
--
ALTER TABLE `BRAND`
  MODIFY `ID_BRAND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `CARGO`
--
ALTER TABLE `CARGO`
  MODIFY `ID_CARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `CARGO_TYPE`
--
ALTER TABLE `CARGO_TYPE`
  MODIFY `ID_CARGO_TYPE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `ID_CARS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `CLIENT`
--
ALTER TABLE `CLIENT`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `COMMUNICATIOS`
--
ALTER TABLE `COMMUNICATIOS`
  MODIFY `ID_COMMUNICATIOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `CONTENT_CARGO`
--
ALTER TABLE `CONTENT_CARGO`
  MODIFY `ID_CONTENT_CARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `DRIVERS`
--
ALTER TABLE `DRIVERS`
  MODIFY `ID_DRIVERS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `ORDER`
--
ALTER TABLE `ORDER`
  MODIFY `ID_ORDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `RATE`
--
ALTER TABLE `RATE`
  MODIFY `ID_RATE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `CARGO`
--
ALTER TABLE `CARGO`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`ID_TYPE_CARGO`) REFERENCES `CARGO_TYPE` (`ID_CARGO_TYPE`);

--
-- Ограничения внешнего ключа таблицы `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`ID_CARGO_TYPE`) REFERENCES `CARGO_TYPE` (`ID_CARGO_TYPE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`ID_BRAND`) REFERENCES `BRAND` (`ID_BRAND`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `COMMUNICATIOS`
--
ALTER TABLE `COMMUNICATIOS`
  ADD CONSTRAINT `communicatios_ibfk_1` FOREIGN KEY (`ID_DRIVERS`) REFERENCES `DRIVERS` (`ID_DRIVERS`) ON UPDATE CASCADE,
  ADD CONSTRAINT `communicatios_ibfk_2` FOREIGN KEY (`ID_CARS`) REFERENCES `cars` (`ID_CARS`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `CONTENT_CARGO`
--
ALTER TABLE `CONTENT_CARGO`
  ADD CONSTRAINT `content_cargo_ibfk_1` FOREIGN KEY (`ID_CARGO`) REFERENCES `CARGO` (`ID_CARGO`),
  ADD CONSTRAINT `content_cargo_ibfk_2` FOREIGN KEY (`ID_ORDER`) REFERENCES `ORDER` (`ID_ORDER`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ORDER`
--
ALTER TABLE `ORDER`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ID_CLIENT`) REFERENCES `CLIENT` (`ID_CLIENT`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`ID_RATE`) REFERENCES `RATE` (`ID_RATE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_6` FOREIGN KEY (`ID_COMMUNICATIOS`) REFERENCES `COMMUNICATIOS` (`ID_COMMUNICATIOS`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
