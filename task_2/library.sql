-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Ноя 21 2019 г., 10:29
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'Alex'),
(2, 'Alexander'),
(3, 'Sergo'),
(4, 'John'),
(5, 'Sara'),
(6, 'Lera'),
(7, 'Andrey'),
(8, 'Max'),
(9, 'Lena'),
(10, 'Kate'),
(11, 'Masha'),
(12, 'Vova'),
(13, 'Denis');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`book_id`, `book_title`) VALUES
(1, 'Игра на чистом JavaScript'),
(2, 'Eda'),
(3, 'Mozg'),
(4, 'Tort'),
(5, 'Bomb'),
(6, 'Orda'),
(7, 'Dama'),
(8, 'Korol'),
(9, 'Еда'),
(10, 'Слон'),
(11, 'Дом'),
(12, 'Работа'),
(13, 'Конь'),
(14, 'Слеза'),
(15, 'Кран'),
(16, 'Сын'),
(17, 'Нос'),
(18, 'Сон'),
(19, 'Уроки по программированию'),
(20, 'Болт'),
(21, 'Серп'),
(22, 'Узник'),
(23, 'Гарри'),
(24, 'Фара'),
(25, 'Хрен и редька '),
(26, 'Ром'),
(27, 'Виски'),
(28, 'Роман'),
(29, 'Гордость');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`items_id`, `book_id`, `author_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(10, 9, 2),
(11, 1, 2),
(12, 2, 2),
(13, 3, 2),
(14, 4, 2),
(15, 5, 2),
(16, 6, 2),
(17, 7, 2),
(18, 8, 2),
(19, 9, 2),
(22, 3, 3),
(23, 4, 3),
(24, 5, 3),
(25, 6, 3),
(26, 7, 3),
(27, 8, 3),
(29, 1, 4),
(30, 2, 5),
(31, 3, 6),
(32, 4, 7),
(33, 5, 8),
(34, 6, 9),
(35, 7, 10),
(36, 8, 4),
(37, 9, 5),
(38, 1, 6),
(39, 2, 5),
(40, 3, 6),
(41, 4, 4),
(42, 5, 4),
(43, 6, 9),
(44, 7, 8),
(45, 8, 5),
(46, 9, 10);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
