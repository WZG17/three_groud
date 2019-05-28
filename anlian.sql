-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 05 月 28 日 09:04
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `anlian`
--

-- --------------------------------------------------------

--
-- 表的结构 `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `talk` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `data`
--

INSERT INTO `data` (`ID`, `head`, `tel`, `name`, `talk`, `username`) VALUES
(1, '../images/15590072092259.jpg', '13573423623', 'O(∩_∩)O~ ', '我我阿阿 O(∩_∩)O~', '13466675502'),
(2, '../images/15590072092259.jpg', '13573453645', '1243645235', '132132332撒', NULL),
(3, '../images/1559009961124237.jpg', '14577234235', '123 ', '阿萨德撒的', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`ID`, `title`, `message`, `date`, `image`) VALUES
(1, '13573423623', 'afdaf', '1528347661', '../images/15590072092259.jpg'),
(2, '13573423623', '斯塔基要', '1528348051', '../images/1559032439652954.jpg'),
(3, '13573423623', '大師傅', '1559021639', '../images/15590072092259.jpg'),
(4, '13573423623', '姑娘家似乎就发的', '1559030267', '../images/1559030266920715.png'),
(5, '13573423623', '快捷方式大哥', '1559032442', '../images/1559032439652954.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
