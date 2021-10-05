-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2021 at 07:10 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adefathudin_kairos`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02ffepav2ci56nu2bgjhdl00m442q6p2', '127.0.0.1', 1616387507, '__ci_last_regenerate|i:1616387507;'),
('07cmj1uaa9t2fnjpu6h7n6pj7vsehabc', '127.0.0.1', 1619072180, '__ci_last_regenerate|i:1619071652;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('07hn8o6i1tc405fut4hgsidjrbhpo4s5', '127.0.0.1', 1615972528, '__ci_last_regenerate|i:1615972528;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('09agrgbeq983n170jja1lj7l3lodnnpq', '127.0.0.1', 1616039562, '__ci_last_regenerate|i:1616039562;'),
('09h1asv0pv3d97e11ietpcf8d8irs7at', '127.0.0.1', 1617165317, '__ci_last_regenerate|i:1617165317;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0a22ko7lljrlsc7p2bldqm462050dc78', '127.0.0.1', 1617613868, '__ci_last_regenerate|i:1617613868;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0da1oib9tg6qrekfshtvmqqrq4jtunua', '127.0.0.1', 1619762606, '__ci_last_regenerate|i:1619762606;'),
('0ehl3131bs4q2chadte1fttjqjtsh1r9', '127.0.0.1', 1619762606, '__ci_last_regenerate|i:1619762606;'),
('0grmbu6nmn1196e0s7srnto6ic599uhe', '127.0.0.1', 1616122250, '__ci_last_regenerate|i:1616122250;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0lmeloklabunlufsgosohcj7onnrv82v', '127.0.0.1', 1617593508, '__ci_last_regenerate|i:1617593508;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0lo5vksn11a5ojou0hvoov0igcckhkjk', '127.0.0.1', 1616481873, '__ci_last_regenerate|i:1616481873;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0n6kjqd1641pl04up3ma79j620d7s8k4', '127.0.0.1', 1617091178, '__ci_last_regenerate|i:1617091178;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0t6i5gvni2nbvbe8rhniia3k9srnsoq2', '127.0.0.1', 1615945074, '__ci_last_regenerate|i:1615945074;'),
('0u3gpjkbp3qbg7o7col0chbtoaoitd18', '127.0.0.1', 1618992860, '__ci_last_regenerate|i:1618992860;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('0utvc9kh7n7i15t30r236gv0kdah8j9c', '127.0.0.1', 1616135805, '__ci_last_regenerate|i:1616135805;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('10ubkfuv4nrp9guso6epl7e9lvho5ekm', '127.0.0.1', 1619070976, '__ci_last_regenerate|i:1619070976;'),
('11in3t3ffrjuhgosa5gdvcmgi1arkfce', '127.0.0.1', 1617256788, '__ci_last_regenerate|i:1617256788;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('126ick682d9eumsdtd2kvec54s8qg5dg', '127.0.0.1', 1622164830, '__ci_last_regenerate|i:1622164802;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('127bfljmq3oo9jolcdn9les9d6nlv53s', '127.0.0.1', 1616375974, '__ci_last_regenerate|i:1616375974;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('140bsu61jbpkt1a2f0fbbgmuktqo3knr', '127.0.0.1', 1618296024, '__ci_last_regenerate|i:1618296024;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('18aa1inaqmch3q2uike6gqtlvf29ppl4', '127.0.0.1', 1616382470, '__ci_last_regenerate|i:1616382470;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('18shse9q5q7duglcduds20ofb49o9beu', '127.0.0.1', 1616377524, '__ci_last_regenerate|i:1616377524;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1al8ckg9mo7frh7gpm0mkj77pve66t26', '127.0.0.1', 1617612546, '__ci_last_regenerate|i:1617612546;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1d5evbnj5k31ivt3n7q902kr9mll0rdm', '127.0.0.1', 1616048949, '__ci_last_regenerate|i:1616048949;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1ebhtlbrantqi26rvv2q4fpjqgdku9k6', '127.0.0.1', 1616164550, '__ci_last_regenerate|i:1616164550;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1lc3mpcc7nefsb02tjitabipfq7gej2f', '127.0.0.1', 1617160218, '__ci_last_regenerate|i:1617160218;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1m0fgvrjb6698tuqgnlc2i02nh4ndbei', '127.0.0.1', 1618555334, '__ci_last_regenerate|i:1618555334;'),
('1nb61l18u6i7nsgn0v0eit80o7fttloq', '127.0.0.1', 1617008419, '__ci_last_regenerate|i:1617008419;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1o5vhmephtnceeh39ojvj5ib7k3ilq4e', '127.0.0.1', 1617093049, '__ci_last_regenerate|i:1617093049;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1pa93b07mt4k0uebjp42gabq04b2emqe', '127.0.0.1', 1616083071, '__ci_last_regenerate|i:1616083071;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1ppv2m4sn228v7bklt5i47ee09teg8od', '127.0.0.1', 1617163697, '__ci_last_regenerate|i:1617163697;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1qbp73bcausn1mdjhltpiv950balorbs', '127.0.0.1', 1617241408, '__ci_last_regenerate|i:1617241408;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1qijano2h0qeihutruguu6bk38r364qf', '127.0.0.1', 1633420465, '__ci_last_regenerate|i:1633420465;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1s6o9geir6594vjsoed9sv7svsnqunrc', '127.0.0.1', 1617602247, '__ci_last_regenerate|i:1617602247;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('1uubu1m6j6e2qtfllv5niuq1u0hkj6ne', '127.0.0.1', 1617240261, '__ci_last_regenerate|i:1617240261;'),
('1vpkq4i8hpr15fns7blajtq9vnj1o8qc', '127.0.0.1', 1615968348, '__ci_last_regenerate|i:1615968348;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('22753iacmg48t07fa9cjkqlbtk0btfq5', '127.0.0.1', 1618800299, '__ci_last_regenerate|i:1618800299;'),
('227sif5aj4st4qtgc6vjhel8n1i119s5', '127.0.0.1', 1616077018, '__ci_last_regenerate|i:1616077018;'),
('23c30fpia1slqtmui4m3ipelapr6q5b1', '127.0.0.1', 1616160271, '__ci_last_regenerate|i:1616160271;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('24kbg25gklnke1asmue3nre4d0bgj3mo', '127.0.0.1', 1617089854, '__ci_last_regenerate|i:1617089854;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('26mbed2siaaa8ee5jbdaovs6gp06i6d2', '127.0.0.1', 1619066295, '__ci_last_regenerate|i:1619066295;'),
('298kfh3flek9fkulrha3gu4e0lad4tno', '127.0.0.1', 1617006920, '__ci_last_regenerate|i:1617006920;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2cba8h4qjuhtueejhosobdmumf13614f', '127.0.0.1', 1615944784, '__ci_last_regenerate|i:1615944784;'),
('2clfalhbcppscbaketl72882g7prhsvd', '127.0.0.1', 1619067629, '__ci_last_regenerate|i:1619067629;'),
('2f7i028bisi1ee8amcesscc05gttdgu5', '127.0.0.1', 1616086316, '__ci_last_regenerate|i:1616086316;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2gj5nu0g880ivq6q5p5tc4cpu8am25v5', '127.0.0.1', 1615800039, '__ci_last_regenerate|i:1615800039;'),
('2ig3bi37kmdgu3j90hqi5fja8e4ni3eb', '127.0.0.1', 1616243054, '__ci_last_regenerate|i:1616243054;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2j2a72mlfc0fncle7qfocnce4hp1e63e', '127.0.0.1', 1617611808, '__ci_last_regenerate|i:1617611808;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2jlnmfji3jvjvqujvnfep3696bk15qnd', '127.0.0.1', 1618988234, '__ci_last_regenerate|i:1618988234;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2rstsbg2cg0iu664735pthg06rgc8udl', '127.0.0.1', 1617609643, '__ci_last_regenerate|i:1617609643;'),
('2um6bf19d62lukdp5hcidlbd0q9grl76', '127.0.0.1', 1616244981, '__ci_last_regenerate|i:1616244981;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('2v8pm0bs0eq8irglgst21baqskqlggpn', '127.0.0.1', 1617588260, '__ci_last_regenerate|i:1617588260;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('31rvpb75ir3ehthv7vjq3gk8iohv72p2', '127.0.0.1', 1616377196, '__ci_last_regenerate|i:1616377196;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('31ubc2tps71via7l6g57708sckfoprdm', '127.0.0.1', 1615971772, '__ci_last_regenerate|i:1615971772;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('338ntev7385a04np4kjfi3jdo3p5gpki', '127.0.0.1', 1616390927, '__ci_last_regenerate|i:1616390927;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('34p0qcloje1r4c5hjg2q2eepjjjagahr', '127.0.0.1', 1618217674, '__ci_last_regenerate|i:1618217674;'),
('36bicoc70avtc5ht0poj0fo1c46nc1i7', '127.0.0.1', 1617093411, '__ci_last_regenerate|i:1617093411;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('382oc14l65p77689qavoeo17jf8g0rc0', '127.0.0.1', 1616378140, '__ci_last_regenerate|i:1616378140;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('388ufc7rc5nkaodm2cru5hvd0vq1sefv', '127.0.0.1', 1633423432, '__ci_last_regenerate|i:1633423135;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('3fnop7q3n65akva5u72emgv38p4404uq', '127.0.0.1', 1615952166, '__ci_last_regenerate|i:1615952166;'),
('3goincqs81sjto9qu4fvelfg88l47nmt', '127.0.0.1', 1616121242, '__ci_last_regenerate|i:1616121242;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('3htf9oi052tk2se9e95pvvspitp3tbad', '127.0.0.1', 1616482293, '__ci_last_regenerate|i:1616482293;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('3mss0q8772f9hioo9j9lmcqgt6jk2o0d', '127.0.0.1', 1616051726, '__ci_last_regenerate|i:1616051726;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('3ujje2k00coa6gnp76b98ub18mq50pup', '::1', 1616079210, '__ci_last_regenerate|i:1616079210;'),
('3v3qnha0rj0ujqj67m846blm99195k7h', '127.0.0.1', 1616416171, '__ci_last_regenerate|i:1616416171;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('40ggdl5n6pl52r5n3v5q9ft9o025qucu', '127.0.0.1', 1617078019, '__ci_last_regenerate|i:1617078019;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('414sb073mtagv97lv3m2naj8445cigbd', '127.0.0.1', 1618892803, '__ci_last_regenerate|i:1618892803;'),
('458r452jtbnlreejta4bif6gcgmklot4', '127.0.0.1', 1616086788, '__ci_last_regenerate|i:1616086788;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('45939nkl0ek45ak4rvf9mh3n6qmiq2p5', '127.0.0.1', 1616405307, '__ci_last_regenerate|i:1616405288;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('45nies1cdas5h4e3gn4p9kraip581f1l', '127.0.0.1', 1617241585, '__ci_last_regenerate|i:1617241408;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('465q0kou5a3elj52a1nb9693n7m8dl8u', '127.0.0.1', 1616485809, '__ci_last_regenerate|i:1616485809;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4bsl85pvefifrvntcipu8aed2qknlek0', '127.0.0.1', 1617592075, '__ci_last_regenerate|i:1617592075;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4dih6g91fivnknb6bjr9gg138c1ts0ts', '127.0.0.1', 1616728032, '__ci_last_regenerate|i:1616728032;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4ikels1eggroodgol62c4kqbpainfn3o', '127.0.0.1', 1617609639, '__ci_last_regenerate|i:1617609639;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4kcq3mqqiq6u1indt1kqdhk62snmcm94', '127.0.0.1', 1615952465, '__ci_last_regenerate|i:1615952465;'),
('4l4k327d61db3ook6odcfha8la6hhh74', '127.0.0.1', 1616490249, '__ci_last_regenerate|i:1616490249;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4mfif8jrn0cc53lemt83neqh5f792j0v', '127.0.0.1', 1616467203, '__ci_last_regenerate|i:1616467203;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4miq0p3po7bpij313m6lkpncoqb95aa3', '127.0.0.1', 1617176074, '__ci_last_regenerate|i:1617176074;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4neslpulb013tcko2del44ujlbcbq1v5', '127.0.0.1', 1615897445, '__ci_last_regenerate|i:1615897445;'),
('4ovu2bqe233l6a7d4016h019aqnijjg8', '127.0.0.1', 1618386529, '__ci_last_regenerate|i:1618386529;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4pdg2l2mnsavh5vrrd70kfb5vbks9ta7', '127.0.0.1', 1617595803, '__ci_last_regenerate|i:1617595803;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4ph2aogjlhcn5rvg2lmtsp3km7evt3a6', '127.0.0.1', 1616744730, '__ci_last_regenerate|i:1616744730;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4qd7bqcnr1161mnf65dvn2iei48b73uv', '127.0.0.1', 1616244579, '__ci_last_regenerate|i:1616244579;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4sdioteucbfmks73dj851o2hqh1tpl37', '127.0.0.1', 1617009450, '__ci_last_regenerate|i:1617009450;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4u98ifvfhtjv84ctv4igeh2or9sag8s3', '127.0.0.1', 1616161508, '__ci_last_regenerate|i:1616161508;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4ub1m56vn8v0uvqa2r49u0shtpgct37l', '127.0.0.1', 1623894486, '__ci_last_regenerate|i:1623894486;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('4vjv2134b6o5kbq9pld3sqjnikrsaaga', '127.0.0.1', 1617589446, '__ci_last_regenerate|i:1617589446;'),
('50frkd415cr49ver9q81v7275kmd5qes', '127.0.0.1', 1615968650, '__ci_last_regenerate|i:1615968650;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('50qf06u7jhsefsbi1lkb02kj5av9hp19', '127.0.0.1', 1616641301, '__ci_last_regenerate|i:1616641301;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('53f42123l8f2av0enfjacu3mjaare29d', '127.0.0.1', 1617163818, '__ci_last_regenerate|i:1617163818;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('53snistb6oq44cq2av852g4a17q6s8kv', '127.0.0.1', 1616733189, '__ci_last_regenerate|i:1616733189;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('54d0gtlprrfu0es3u1jlonmlc0g1d7it', '127.0.0.1', 1616416585, '__ci_last_regenerate|i:1616416585;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('58dib1rar0mtcleiei18rbd19v1outta', '127.0.0.1', 1616727055, '__ci_last_regenerate|i:1616727055;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('5bdm62igvpbij7mhphuikgg97jcmd9mu', '127.0.0.1', 1615945836, '__ci_last_regenerate|i:1615945836;'),
('5i86nl2av1fmfg6k0iq5ksj6a80ubrq8', '127.0.0.1', 1619762565, '__ci_last_regenerate|i:1619762565;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('5iau3dnnf5106agr0r52q755ef96fkak', '127.0.0.1', 1617675214, '__ci_last_regenerate|i:1617675214;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('5jckbhe2o6juv8adm30vaqsnvde396ve', '127.0.0.1', 1633414415, '__ci_last_regenerate|i:1633414415;'),
('5n4q0cqikkqkh0583q9ugj1o7m69uoll', '127.0.0.1', 1619411583, '__ci_last_regenerate|i:1619411583;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('5s9akd71o3jrsqvlmui3tif676td4uhr', '127.0.0.1', 1616732432, '__ci_last_regenerate|i:1616732432;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('61bkqfnsmvb7dbvtrh3phrl524cp80ig', '127.0.0.1', 1617608514, '__ci_last_regenerate|i:1617608514;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('62v73dtn5cf59u5ivkruvhffovtl5j2o', '127.0.0.1', 1618899133, '__ci_last_regenerate|i:1618899133;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('65kf4gmmhpul52snfpiu74djdmsqchpc', '127.0.0.1', 1615956611, '__ci_last_regenerate|i:1615956611;'),
('660sp4mr7i6r7vgbcs85jgsv5esvmbm5', '127.0.0.1', 1616741546, '__ci_last_regenerate|i:1616741546;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('67c27ll2dolm3b3ip2uo4rvfe87v51f4', '127.0.0.1', 1615897140, '__ci_last_regenerate|i:1615897140;'),
('6abh8nsi12o8r8s7dbigtme0evjo618e', '127.0.0.1', 1616745973, '__ci_last_regenerate|i:1616745973;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6duf3kuf4s5dqclu38gdu4vd4eumqbcu', '127.0.0.1', 1616039561, '__ci_last_regenerate|i:1616039561;'),
('6eee7fcrfo7iiofvpl2pe5h5lpf91iqk', '127.0.0.1', 1618555334, '__ci_last_regenerate|i:1618555334;'),
('6erm6o2kanb16720o06nh2il80bqh122', '127.0.0.1', 1616342100, '__ci_last_regenerate|i:1616342100;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6hsfjj443coricn2ko9blb9gl0gu3jtc', '127.0.0.1', 1617170957, '__ci_last_regenerate|i:1617170957;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6jacmnmvulbnneccgkfe2jq21lf9sliq', '127.0.0.1', 1616081838, '__ci_last_regenerate|i:1616081838;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6kn0b1j9evnstfjg8fk1csm681bvrrn3', '127.0.0.1', 1619763599, '__ci_last_regenerate|i:1619763599;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6m9knflcuqs4jms1ffh3g6grqtje4v5t', '127.0.0.1', 1616403063, '__ci_last_regenerate|i:1616403063;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6mb7o819ha7rm1tk062kvriqha936jv6', '127.0.0.1', 1623814041, '__ci_last_regenerate|i:1623814041;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6mpjjm5fr1ncqqihd7jaemt81s3k2861', '127.0.0.1', 1617603223, '__ci_last_regenerate|i:1617603223;'),
('6ne4ivch7mm12i0bl2mdgdrade4eh7l3', '127.0.0.1', 1617159595, '__ci_last_regenerate|i:1617159595;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6nk4ttpsjojhhis0bgflpjlp6egvo7is', '127.0.0.1', 1616392024, '__ci_last_regenerate|i:1616392024;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6p006t9452sp4est96u81inmv21qrtgf', '127.0.0.1', 1615949885, '__ci_last_regenerate|i:1615949885;'),
('6qfnfrqchrjru807kgbn2d6d8vf3ahkl', '127.0.0.1', 1616127783, '__ci_last_regenerate|i:1616127783;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('6vghv2d0vq6ra00rio6cl62dgg95da7j', '127.0.0.1', 1617164932, '__ci_last_regenerate|i:1617164932;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('72m0qnso9tjqv4f9viten03hlvp6qkeb', '127.0.0.1', 1617595087, '__ci_last_regenerate|i:1617595087;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('74ickd4m591oeka4gvojbjpm1sfoqf94', '127.0.0.1', 1616165933, '__ci_last_regenerate|i:1616165933;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('75mtph1d7b4hgvrfjf6eudpj9p15rip5', '127.0.0.1', 1617675882, '__ci_last_regenerate|i:1617675861;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('79s07n974tq7qo6s1f71q2oav7dqn7si', '127.0.0.1', 1616393461, '__ci_last_regenerate|i:1616393461;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7cotg0eol9b4gj9tm6pj99b31d1mg5a9', '127.0.0.1', 1618297651, '__ci_last_regenerate|i:1618297651;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7crjui5hlsqceqi4brahk1ujgua4qpls', '127.0.0.1', 1616166024, '__ci_last_regenerate|i:1616165937;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7f8s2js9341f8gl6rk0greebvs8thmes', '::1', 1619408659, '__ci_last_regenerate|i:1619408387;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7iopd3nfah5ouuu0suhfi44gi7an6u2e', '127.0.0.1', 1616389410, '__ci_last_regenerate|i:1616389410;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7m6g4lncltia5e3e3dvhnpiq4ljk8p2k', '127.0.0.1', 1617085389, '__ci_last_regenerate|i:1617085389;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7oejj2hv9dsnhk5iol0doj8bho9frklv', '::1', 1616081581, '__ci_last_regenerate|i:1616081576;'),
('7qobk2du5g4366af7sssd525cvbvr8tu', '127.0.0.1', 1617594394, '__ci_last_regenerate|i:1617594394;'),
('7r9ksqinl90kjtuiasjdfhvcuf452oc1', '127.0.0.1', 1616485090, '__ci_last_regenerate|i:1616485090;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7sfm7fkjd0gg3atcegf9m6voa0dmm9eo', '127.0.0.1', 1617090160, '__ci_last_regenerate|i:1617090160;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('7smpcsa2eb1lusbbc1ce6hfhmb6eocib', '127.0.0.1', 1618218101, '__ci_last_regenerate|i:1618218101;'),
('81r6teaup55d41545602juvem44lk9g7', '127.0.0.1', 1615970998, '__ci_last_regenerate|i:1615970998;has_loggedin|b:1;id|s:2:\"11\";user_id|s:32:\"5663eb373c84f558af480f80fb5bf980\";email|s:5:\"a@a.c\";password|s:32:\"202cb962ac59075b964b07152d234b70\";blokir|s:1:\"0\";'),
('82e85najavmqkfvc0slh17jregsh3q3l', '127.0.0.1', 1617603129, '__ci_last_regenerate|i:1617603129;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('83ctanu7sn06gpo4h7r92lshghcdi3n7', '127.0.0.1', 1616474325, '__ci_last_regenerate|i:1616474325;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8a14nu7vk1hcvma17mp7vfomm0ub1hos', '127.0.0.1', 1616121923, '__ci_last_regenerate|i:1616121923;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8aol44lg5513q9shjto8apc6td9ttdc5', '127.0.0.1', 1618296035, '__ci_last_regenerate|i:1618296035;'),
('8aqubiqgh3a7sc1edn6uihmtpk3l4hi9', '127.0.0.1', 1616050565, '__ci_last_regenerate|i:1616050565;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8ccu6p104dr74hkqcq6pke47d9ldpge5', '127.0.0.1', 1619064839, '__ci_last_regenerate|i:1619064839;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8cpegn9pc826k4060f47kgq7gjsq9cob', '127.0.0.1', 1623934345, '__ci_last_regenerate|i:1623934345;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8d4n92q04q8b3v05kg51u25kjd85eqto', '127.0.0.1', 1615800706, '__ci_last_regenerate|i:1615800706;'),
('8eqq2ee4p7e3k08pndga00r0mplk3ebe', '127.0.0.1', 1616161661, '__ci_last_regenerate|i:1616161578;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8flgp54mr1m6tvug0313o7gfklukf4jl', '127.0.0.1', 1615961293, '__ci_last_regenerate|i:1615961293;has_loggedin|b:1;id|s:1:\"4\";user_id|s:3:\"q12\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8hl7j2tbpiecfe1dk4b4n21b6vd7bvsc', '127.0.0.1', 1617267545, '__ci_last_regenerate|i:1617267545;'),
('8k6a0m3p5k0rlocdv1kdkfj084q5lld7', '127.0.0.1', 1619761934, '__ci_last_regenerate|i:1619761934;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8kn9onb9fucjii44of5q0ue41vdvu9oj', '127.0.0.1', 1616243913, '__ci_last_regenerate|i:1616243913;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8o19dpbio0p00l4459ob956gufp2jjg7', '127.0.0.1', 1617598406, '__ci_last_regenerate|i:1617598406;'),
('8qon6csbkhj7p4q4ajpkq2aeojmf439g', '127.0.0.1', 1616640819, '__ci_last_regenerate|i:1616640819;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8r0tuvic2b8572niu3453kst58oj1q7l', '127.0.0.1', 1617159900, '__ci_last_regenerate|i:1617159900;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8u0t14vgl8nvo8hvv5bm59fcbfvfcg32', '127.0.0.1', 1617164538, '__ci_last_regenerate|i:1617164538;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('8u848lejlv4nensvq3902nqdvoauedd1', '127.0.0.1', 1617009761, '__ci_last_regenerate|i:1617009761;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('925htld74i3c74kvpci3midkqd92hnlp', '127.0.0.1', 1618386181, '__ci_last_regenerate|i:1618386181;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9dj7vg24f9bpkh6qm4eh740pv0hcu1kt', '127.0.0.1', 1616374530, '__ci_last_regenerate|i:1616374530;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9gb8glj3pohq95nf27derc05hfok8go6', '127.0.0.1', 1617083093, '__ci_last_regenerate|i:1617083093;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9gpejbpn847meijrj1qh09oh417hoftt', '127.0.0.1', 1616379692, '__ci_last_regenerate|i:1616379692;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9idu9fpvrp2h4a7ikr1ij6480ehmee0t', '127.0.0.1', 1617595404, '__ci_last_regenerate|i:1617595404;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9r5qi8jjant3j17gp5puoh2c2ubidcii', '127.0.0.1', 1617177349, '__ci_last_regenerate|i:1617177349;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9r7oe7f8rs3coqufiaennkm324itk6qi', '127.0.0.1', 1617078060, '__ci_last_regenerate|i:1617078060;'),
('9rk3dc40cc1v8mqdvlchb980sbfs82il', '127.0.0.1', 1617594144, '__ci_last_regenerate|i:1617594144;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9sgqcqg3326ujbjpdotd25h1mm3vksbm', '127.0.0.1', 1617269790, '__ci_last_regenerate|i:1617269790;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('9su1bqdh9daroihr3c4kdmm5g9q31j65', '127.0.0.1', 1616380146, '__ci_last_regenerate|i:1616380146;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('a5htm52p6c5hj2jsl3g65rjut6m972e9', '127.0.0.1', 1617092582, '__ci_last_regenerate|i:1617092582;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('a6hk8s9n1fa0ts9c8i9inrl4h8esa7mq', '127.0.0.1', 1616134077, '__ci_last_regenerate|i:1616134077;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('a882i0fjn8jsgnn6famt1411m8g67qcq', '127.0.0.1', 1616478157, '__ci_last_regenerate|i:1616478157;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('a8p4b2fv21rrih8dthl6fm56umeaeqi8', '127.0.0.1', 1618985007, '__ci_last_regenerate|i:1618985007;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('a9953q2kivpf3c4hh6f83v4cotue3ukc', '127.0.0.1', 1633416326, '__ci_last_regenerate|i:1633416326;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('aaktpfsbfvffu2nfa3pqhttijagi7ac8', '127.0.0.1', 1617157208, '__ci_last_regenerate|i:1617157208;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('abdju0fbrn2rnd6o6fmmt5g1o3m01ulr', '127.0.0.1', 1619755460, '__ci_last_regenerate|i:1619755460;'),
('adivsakic3lh5rsu9pfhp8irk1n4ces8', '127.0.0.1', 1619403149, '__ci_last_regenerate|i:1619403149;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('aecv3p50ijh5e1ol389904ir63e9c890', '127.0.0.1', 1616491100, '__ci_last_regenerate|i:1616491086;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('amct2q13tkadu4u9jmk0drq0fsq0raov', '127.0.0.1', 1617008960, '__ci_last_regenerate|i:1617008960;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('anjnod8n3mujrlr0fud2mik9efbl2kmk', '127.0.0.1', 1616380675, '__ci_last_regenerate|i:1616380675;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ap6475tph6jdjua0s69fe2jisl1b5bsq', '127.0.0.1', 1617171184, '__ci_last_regenerate|i:1617171184;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('aqitf8nptbon2baqagloful4irju9qck', '127.0.0.1', 1617079839, '__ci_last_regenerate|i:1617079839;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('arp8d1iuptdrds3h0uurq206bsoick65', '127.0.0.1', 1617173225, '__ci_last_regenerate|i:1617173225;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('atb3gkl54ac8ocllqujnk55jjc9gr0ud', '127.0.0.1', 1616374129, '__ci_last_regenerate|i:1616374129;'),
('atgulnn81pchaj2v33eh69nfqlrcg5nf', '127.0.0.1', 1616653229, '__ci_last_regenerate|i:1616653229;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('b01pkd8nc60ourrvhh86khnaoflm9099', '127.0.0.1', 1617090552, '__ci_last_regenerate|i:1617090552;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('b1ku14b2f1s5109083mrlc1eaje4qjol', '127.0.0.1', 1616163075, '__ci_last_regenerate|i:1616162949;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('b7np4hhhqfc77o66811kkgmuhm1166rr', '127.0.0.1', 1616159949, '__ci_last_regenerate|i:1616159949;'),
('b8q85bkkm0n05i9k33hprn6ijt719udv', '127.0.0.1', 1616134395, '__ci_last_regenerate|i:1616134395;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('bftqcrceichcbvuqqjlbvmflt47rsedv', '127.0.0.1', 1616724685, '__ci_last_regenerate|i:1616724685;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('bi4iq1pc31vmjok20atvhvqkuv7v0dmn', '127.0.0.1', 1616373422, '__ci_last_regenerate|i:1616373422;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('bkio6h6o1rk04jafkncpajpu799pjj3u', '127.0.0.1', 1617162668, '__ci_last_regenerate|i:1617162668;'),
('bmi7lth36fe4rhafq0546nqb72v7hgrg', '127.0.0.1', 1616730728, '__ci_last_regenerate|i:1616730728;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('boq7sf6mcjnklvan739l0dssjfq91mmr', '127.0.0.1', 1616374048, '__ci_last_regenerate|i:1616374048;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('brtkimann7pp6rvkb8agqcq9d2ebbiup', '127.0.0.1', 1617160778, '__ci_last_regenerate|i:1617160778;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('bv48jolnlmppp5d5qjrugfpfbuj6tsuj', '127.0.0.1', 1617609074, '__ci_last_regenerate|i:1617609074;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('bvbctbcpl2o8b57scu2q2c9bf1fk2aq9', '127.0.0.1', 1616393101, '__ci_last_regenerate|i:1616393101;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('c2391r3adukqdv1etkj27ftud48lrioj', '127.0.0.1', 1616376291, '__ci_last_regenerate|i:1616376291;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('c3qfbr65582qbd699v7r7hdjfvl8328e', '127.0.0.1', 1616161922, '__ci_last_regenerate|i:1616161922;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('c6fvvmofem0de20ei4c1l7p38dri77kk', '127.0.0.1', 1617606498, '__ci_last_regenerate|i:1617606498;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ccjap13u5rri65s1nckvva482rr2p8na', '127.0.0.1', 1616338201, '__ci_last_regenerate|i:1616338201;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cecm5njn753j3lb9do5i2p6f24aok06t', '127.0.0.1', 1617090877, '__ci_last_regenerate|i:1617090877;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('chu0smaumo3j5o30pm8nhfmnugkk20p1', '127.0.0.1', 1618296572, '__ci_last_regenerate|i:1618296572;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ci9cdcph73rluru6hejgr5rpfs8ithgr', '127.0.0.1', 1615971388, '__ci_last_regenerate|i:1615971388;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cogqmgn6l52li1fq48sdfl1iskjbdeka', '127.0.0.1', 1616159945, '__ci_last_regenerate|i:1616159945;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cq63dkooc74h2lrmmo7edch9sjsb8sos', '127.0.0.1', 1616388904, '__ci_last_regenerate|i:1616388904;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cqkpajekank2ov9i4191piu975o8qu4c', '127.0.0.1', 1616652270, '__ci_last_regenerate|i:1616652270;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('crolqamp1ds0k3j0nmuah13cb8ukh9cp', '127.0.0.1', 1617598003, '__ci_last_regenerate|i:1617598003;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cs58jlb60jr17i4b5lt25dmgk5vl4bum', '127.0.0.1', 1615950199, '__ci_last_regenerate|i:1615950199;'),
('ct7dgpb9igv6djad6qr2cgceiv8cbdo2', '127.0.0.1', 1617589446, '__ci_last_regenerate|i:1617589446;'),
('ctbs664r7lguov9o3cvheq7i353gjtr7', '127.0.0.1', 1617158937, '__ci_last_regenerate|i:1617158937;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('cunl8i6knbaj5oh4epobjohctanmigk5', '127.0.0.1', 1618031867, '__ci_last_regenerate|i:1618031867;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('d0d9pot2qeolntlummufu6apbmp223ao', '127.0.0.1', 1623810282, '__ci_last_regenerate|i:1623810232;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('d6oap97n2j1dqld1obg81ascl000uarg', '127.0.0.1', 1617258450, '__ci_last_regenerate|i:1617258450;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('d80a3mn9tnhdgj60rl1ira2lbra4oj94', '127.0.0.1', 1615895299, '__ci_last_regenerate|i:1615895299;'),
('d9h391q0a1fje9c0q2in8vcs4g6pmu0t', '127.0.0.1', 1619065161, '__ci_last_regenerate|i:1619065161;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('dbdev6c34uh0sp671vnkgdhhj5sggqs6', '127.0.0.1', 1616467039, '__ci_last_regenerate|i:1616467039;'),
('df4c24ridrbiusn7l3eh4q2dpksmqrgr', '127.0.0.1', 1617603962, '__ci_last_regenerate|i:1617603962;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('dhna0kfhvmnhh6svcakj24ci457gta2b', '127.0.0.1', 1617177105, '__ci_last_regenerate|i:1617177105;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('dhp0rh04dm2u4c5j9dpqs61pds1cc6ig', '127.0.0.1', 1616467038, '__ci_last_regenerate|i:1616467038;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dj1uj2h1pmvv191q5tp5nfiuo9io2992', '127.0.0.1', 1617083464, '__ci_last_regenerate|i:1617083464;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('dtj1kq34jsih2pqo7uhqfhucqggs5422', '127.0.0.1', 1633418851, '__ci_last_regenerate|i:1633418851;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('e296q34tgidpki5bnn7frl4m36a7gqo1', '127.0.0.1', 1616120832, '__ci_last_regenerate|i:1616120832;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('e2k7vqs5pvrpshs9f419epttrc5qvg9g', '127.0.0.1', 1618386223, '__ci_last_regenerate|i:1618386223;'),
('e3fm8784v95t36l9he54b8aiqo9insds', '127.0.0.1', 1615945103, '__ci_last_regenerate|i:1615945103;'),
('e3n9lsrc5jh5jq1fpdqolka8bcf3jlso', '127.0.0.1', 1617182006, '__ci_last_regenerate|i:1617182006;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('eak1k01qgmpf2hom941afn4l8voisiaa', '127.0.0.1', 1622194441, '__ci_last_regenerate|i:1622194167;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('eim5j503tpdp0g50hqtvpmot5fjgdujs', '127.0.0.1', 1617170654, '__ci_last_regenerate|i:1617170654;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ekkskii11scbg4df0arvm78rnotja0n4', '127.0.0.1', 1616039879, '__ci_last_regenerate|i:1616039879;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('el618426cnh2u5fjv0eftpnpkfld28q2', '127.0.0.1', 1616127312, '__ci_last_regenerate|i:1616127312;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('em5ijer3fnj4m65e2tdsq2pja887fbdj', '127.0.0.1', 1615896804, '__ci_last_regenerate|i:1615896804;'),
('emb2h2taeap3bgna8pv061jbkta16av3', '127.0.0.1', 1615950783, '__ci_last_regenerate|i:1615950783;'),
('enq28il1tld01dfcmivetoc8l4n4r9tr', '127.0.0.1', 1616725036, '__ci_last_regenerate|i:1616725036;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('epc00bufp3bjifl3dgifh0lclhdn1ldh', '127.0.0.1', 1618990769, '__ci_last_regenerate|i:1618990769;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('eq106v5p6pdsscdffkqvvi714bhhl3rj', '127.0.0.1', 1617172339, '__ci_last_regenerate|i:1617172339;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('eq5u7kron431s9l2cubfsrj70vjj50b1', '127.0.0.1', 1618903022, '__ci_last_regenerate|i:1618903022;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('esi5gs043v68q0j3ikf5p7bd2fnquffg', '127.0.0.1', 1617240159, '__ci_last_regenerate|i:1617240159;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('eu5mr0nbfpo3entb3umgbp5k91kreese', '127.0.0.1', 1617612222, '__ci_last_regenerate|i:1617612222;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('evcebm5rpj5bf30k6a6ue1hf0asvbmu8', '127.0.0.1', 1633420143, '__ci_last_regenerate|i:1633420143;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('f2digs1iqnjbpsott65gdq8kup1frted', '127.0.0.1', 1616724758, '__ci_last_regenerate|i:1616724758;'),
('f2nfdckapdufmmv6mgctf25s1q2te3ha', '127.0.0.1', 1615966291, '__ci_last_regenerate|i:1615966291;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('f4nafksvsmdkk6mjeojkg5vedf15ol09', '127.0.0.1', 1616722612, '__ci_last_regenerate|i:1616722612;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('f61nf44usv84u0cnbr6dhdki4f7m17v1', '127.0.0.1', 1617603223, '__ci_last_regenerate|i:1617603223;'),
('f8gt2o34rsg829a6ph9vls2g86f967at', '127.0.0.1', 1617606878, '__ci_last_regenerate|i:1617606878;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('f8lvs9ib719335e9a6l95g8u9mbe9kmb', '127.0.0.1', 1616400849, '__ci_last_regenerate|i:1616400849;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('faepcv3qgm7hgccdd9e95btlqpcsfgj3', '127.0.0.1', 1618556782, '__ci_last_regenerate|i:1618556776;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('faih943090mlrgulfofu82mnlc9qsh39', '127.0.0.1', 1618900961, '__ci_last_regenerate|i:1618900961;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('fie9330bra9nntioddochv3sncpie4sj', '127.0.0.1', 1617008522, '__ci_last_regenerate|i:1617008522;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('fj7pkvduvdgrkm52rivqnrqq6s08e170', '127.0.0.1', 1617162026, '__ci_last_regenerate|i:1617162026;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('frbip2timv2e6esmaleef86lj8hml8e7', '127.0.0.1', 1617258691, '__ci_last_regenerate|i:1617258450;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('fscstc78fcnpvsl2d1fthbb0alpgpl6c', '127.0.0.1', 1616728724, '__ci_last_regenerate|i:1616728724;'),
('fst6bffrto4986dttcg62fq2m156rcdu', '127.0.0.1', 1617587947, '__ci_last_regenerate|i:1617587947;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('g8jdu20dcfoha2ou8vjni6n7um81gsoa', '127.0.0.1', 1617170196, '__ci_last_regenerate|i:1617170196;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('g9ul1u8icakjlsu0g4e5mu7jojmartns', '127.0.0.1', 1616039557, '__ci_last_regenerate|i:1616039557;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gg8iju685mr61pa79gthg6r03e4h90ga', '127.0.0.1', 1617068685, '__ci_last_regenerate|i:1617068685;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ggljs1ct3guvtv8bbdr15uo9h4j72u5e', '127.0.0.1', 1617598401, '__ci_last_regenerate|i:1617598401;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gi1ku5sbiimmntrvehjrj19r479hhrem', '127.0.0.1', 1633419589, '__ci_last_regenerate|i:1633419589;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gifaerogk2qb56pkc2efbbdvdvfsa0vh', '127.0.0.1', 1617086554, '__ci_last_regenerate|i:1617086554;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('girp2ltdm8o15dbp0fe26jf0mt5g7g6o', '127.0.0.1', 1616728369, '__ci_last_regenerate|i:1616728369;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gj8avqfjphfqip89s8m2obhnoqml81pb', '127.0.0.1', 1616137012, '__ci_last_regenerate|i:1616137012;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('glt9vt95r2nj3at91t6nu609klmob6f2', '127.0.0.1', 1616080945, '__ci_last_regenerate|i:1616080945;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gn7ldkmgok2uaq30rtagj1k5uvclgf62', '127.0.0.1', 1622194643, '__ci_last_regenerate|i:1622194643;'),
('go6n8otjttce1c56konkdpulq43obnki', '127.0.0.1', 1616641617, '__ci_last_regenerate|i:1616641617;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gp1tr1dtr2m1hdfjd3r6hvvq0c31pbj6', '127.0.0.1', 1633416855, '__ci_last_regenerate|i:1633416855;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gqnpnpouh078de2e7j66hsu5vu7bagfa', '127.0.0.1', 1617175225, '__ci_last_regenerate|i:1617175225;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('grgtv0t6sqprr9nit47p7od6hr4h8cu3', '127.0.0.1', 1616723287, '__ci_last_regenerate|i:1616723287;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('grp25vh11c4vqgngv1b9suuhdhcm3au7', '127.0.0.1', 1617078006, '__ci_last_regenerate|i:1617078006;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('gtfdbbeedcvkj5ab89uf806m20ji3e36', '127.0.0.1', 1618811530, '__ci_last_regenerate|i:1618800025;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('h40eo2nffbnouujlqj0ol4o5lalthd3v', '127.0.0.1', 1616121090, '__ci_last_regenerate|i:1616121090;'),
('hgsq0u2o2kk7iaq9n6ds9tq2hdaa3b0k', '127.0.0.1', 1616639056, '__ci_last_regenerate|i:1616639055;'),
('hh79ircm1mdqhledgl74108s2onb83la', '127.0.0.1', 1615951795, '__ci_last_regenerate|i:1615951795;'),
('hil62g0envtlhnqlgjtuj5h0u9o7iv2k', '127.0.0.1', 1617613533, '__ci_last_regenerate|i:1617613533;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('hkll6a7lokctrsj1e46tk01plpeotnuj', '127.0.0.1', 1616125270, '__ci_last_regenerate|i:1616125270;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('hqb05vtlq0ohgp06d8d5je2s5s9f1q9h', '127.0.0.1', 1616382784, '__ci_last_regenerate|i:1616382784;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('hskbdcqp7pkmflmuo5s0scnv548id8an', '127.0.0.1', 1616039161, '__ci_last_regenerate|i:1616039161;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('hv4fimiee89pvu3snfnhtcpehu3b26no', '127.0.0.1', 1616086012, '__ci_last_regenerate|i:1616086012;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('hvcljh70opt5hiek5jsqd2qbvjpc68oj', '127.0.0.1', 1615945448, '__ci_last_regenerate|i:1615945448;'),
('i19g05a8etg2bsacq0blhfkug0h2195h', '127.0.0.1', 1616082215, '__ci_last_regenerate|i:1616082215;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('i295him22hgitg2slt6tt3iik8t33suk', '127.0.0.1', 1615951487, '__ci_last_regenerate|i:1615951487;'),
('i4858r6q9dv4h4ojti93ovdkjm6ufeq4', '127.0.0.1', 1617091967, '__ci_last_regenerate|i:1617091967;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('i7de14a7evriingorusrrdu0md83oikt', '127.0.0.1', 1618217674, '__ci_last_regenerate|i:1618217674;'),
('i8ve9g7jq0n9li5acbdn28rktecajq2p', '127.0.0.1', 1615799687, '__ci_last_regenerate|i:1615799687;'),
('if5omiq2ov94vviiupvetv2si8rbt82c', '127.0.0.1', 1616639055, '__ci_last_regenerate|i:1616639055;'),
('ifake9h0l2p1vpv1qg3vnbehcjvgt2rg', '127.0.0.1', 1616390447, '__ci_last_regenerate|i:1616390447;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('in44v130ta93qk69bh4lp9fr1paoc3a3', '127.0.0.1', 1617241481, '__ci_last_regenerate|i:1617241481;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('inqajvksh86cesfgua3kaqkcibk5gno0', '127.0.0.1', 1616077019, '__ci_last_regenerate|i:1616077019;'),
('iobg2d3qh0qmefk8m9i5ik83kmku5api', '127.0.0.1', 1617093756, '__ci_last_regenerate|i:1617093756;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ioddri1ckpiqg9kv8meft1mm9rhq63aq', '127.0.0.1', 1616246321, '__ci_last_regenerate|i:1616246321;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ioi97ud6bt85anqjoit7fhsr5cvkihfh', '127.0.0.1', 1616041683, '__ci_last_regenerate|i:1616041683;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ioracpvj42hppl9de027ees0q9qs9ftt', '127.0.0.1', 1633417628, '__ci_last_regenerate|i:1633417628;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ipfprh00jdqja0i4i12ki8n2hb9n0qa6', '127.0.0.1', 1616160576, '__ci_last_regenerate|i:1616160576;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('iqmjjtt07uh6dteh5g0563latot37sr7', '127.0.0.1', 1617157808, '__ci_last_regenerate|i:1617157808;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('irlfkpl34vs3mjdrbpdj89vjdq0g794p', '127.0.0.1', 1633415391, '__ci_last_regenerate|i:1633415391;'),
('irrkiv02kkiko03v9r4thel4cd79r13q', '127.0.0.1', 1617597191, '__ci_last_regenerate|i:1617597191;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('it6jupg5bhcde444ccol807ta6lhv5gr', '127.0.0.1', 1619065646, '__ci_last_regenerate|i:1619065646;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('iu39cinn3vd8nbf2amnd744k9edjadtp', '127.0.0.1', 1615962675, '__ci_last_regenerate|i:1615962675;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('iufh5c135s8v8dc38s5djbvol4l69c84', '127.0.0.1', 1617006902, '__ci_last_regenerate|i:1617006902;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j1tc4fe2kesovs1huq50ngu17c1j71fs', '127.0.0.1', 1616038609, '__ci_last_regenerate|i:1616038609;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j35aknimu0acuj1spc8g6ojoeoron4cp', '127.0.0.1', 1616040618, '__ci_last_regenerate|i:1616040618;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j3potgjkn2pp367lfkv3d8ilnd88c6rn', '127.0.0.1', 1617093713, '__ci_last_regenerate|i:1617093713;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j65rsp9acqgp2b9ehu4h5u6sbv3rb18d', '127.0.0.1', 1616393799, '__ci_last_regenerate|i:1616393799;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j7qb6vfv604kienikpjb867pmm00v6ts', '127.0.0.1', 1617610192, '__ci_last_regenerate|i:1617610192;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('j92oe5ca2m4rn21rof1cdpa5gangigpl', '127.0.0.1', 1617589129, '__ci_last_regenerate|i:1617589129;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jc2p0q5n371kci1edruau8575geask9e', '127.0.0.1', 1619065992, '__ci_last_regenerate|i:1619065992;'),
('jecdiqjndrjmi1ssju7sbjsmls1ngqg2', '127.0.0.1', 1616159552, '__ci_last_regenerate|i:1616159552;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jerd2iaac7ck6mf3n2c4ibcjk6nkhu1v', '127.0.0.1', 1616486203, '__ci_last_regenerate|i:1616486203;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jh64n2jllrc3ij44r903ftkb6m1ik0oc', '127.0.0.1', 1618386893, '__ci_last_regenerate|i:1618386893;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jhicetssel7apftr8irhjcs68r3stc6f', '127.0.0.1', 1617588662, '__ci_last_regenerate|i:1617588662;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jiau3on5u53c1gpv34a1eoeohffo4ruf', '::1', 1616081576, '__ci_last_regenerate|i:1616081576;'),
('jir42s92f9f0kqtpnlic58g9or1cqc18', '127.0.0.1', 1617594714, '__ci_last_regenerate|i:1617594714;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jl43qf149516c43uhmvguu5na04emg8p', '127.0.0.1', 1617675905, '__ci_last_regenerate|i:1617675767;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jpe5jq1jmajn9ea9173rvfgb14qk81b9', '127.0.0.1', 1617611216, '__ci_last_regenerate|i:1617611216;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jq7plt0enrn5if5qtb6hlmq62b7j69oa', '127.0.0.1', 1617182507, '__ci_last_regenerate|i:1617182507;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jtp5cp1mdh7oc66gd6cl3982e1nau0dg', '127.0.0.1', 1617003239, '__ci_last_regenerate|i:1617003239;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('jvf6svn6lv3g5u5rdhmhtgpaucf6tuj9', '127.0.0.1', 1615961955, '__ci_last_regenerate|i:1615961955;has_loggedin|b:1;id|s:1:\"4\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"d41d8cd98f00b204e9800998ecf8427e\";blokir|s:1:\"0\";'),
('k0kj0r0oarqdeuvpm3fdmg7qt0pd8aoe', '127.0.0.1', 1617181549, '__ci_last_regenerate|i:1617181549;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('k0opjjnthq1l9drldanb8fvgnvuembdh', '127.0.0.1', 1615972154, '__ci_last_regenerate|i:1615972154;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('k379nl7skl8fbhv4l7nmhc7lht3qi64b', '127.0.0.1', 1616653509, '__ci_last_regenerate|i:1616653509;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('k5i61sunv504mrkquih5pfs96q3mg38j', '127.0.0.1', 1618987395, '__ci_last_regenerate|i:1618987395;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('k879ltikdbb3tl2l46p9iifjvkqbej7s', '127.0.0.1', 1619411789, '__ci_last_regenerate|i:1619411583;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('k921bju53oq4poahotlr44maubt1elug', '127.0.0.1', 1616079837, '__ci_last_regenerate|i:1616079837;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kaflbvr092ojejsd6h4r4bgrvhungu3q', '127.0.0.1', 1616732879, '__ci_last_regenerate|i:1616732879;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kebe6tbc4l0d8t56tpfpmigo5809tgrn', '127.0.0.1', 1633415617, '__ci_last_regenerate|i:1633415617;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kf9jr7jp8vvjr55hh2gkaaj8rqn5oekp', '127.0.0.1', 1617172658, '__ci_last_regenerate|i:1617172658;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kgve7evt7dlrbgpg6fjrj94gosgnq2qm', '127.0.0.1', 1618217081, '__ci_last_regenerate|i:1618217081;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kh8tji0n586a7kn99db44rk550ref91q', '127.0.0.1', 1616245861, '__ci_last_regenerate|i:1616245861;'),
('khh2f5rssthmo474ht5etjr7v11edkvc', '127.0.0.1', 1617089035, '__ci_last_regenerate|i:1617089035;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kju9c2ibprp6gg4q17ipd80h43md6qtv', '127.0.0.1', 1616729666, '__ci_last_regenerate|i:1616729666;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kk9l648bui9ji0o9g4jeitc3np7qh6g6', '127.0.0.1', 1618556776, '__ci_last_regenerate|i:1618556776;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('klbn91vg5ii3a23bbtf11dlgevt0eho1', '127.0.0.1', 1617158610, '__ci_last_regenerate|i:1617158610;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('klcdon4j5jsk0o09csaq49169pd4p87m', '127.0.0.1', 1617164228, '__ci_last_regenerate|i:1617164228;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('km0efbgq239q1c476vqb6kpgul3l13s6', '127.0.0.1', 1618217535, '__ci_last_regenerate|i:1618217535;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('koe7ug74vpiq299cj64iuj0e2kldvph1', '127.0.0.1', 1616728684, '__ci_last_regenerate|i:1616728684;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kqa2cg16dm9k1bqn7vkd06jj7fkq2ioh', '127.0.0.1', 1616387646, '__ci_last_regenerate|i:1616387646;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ksincnit370nfjeu0j4e1klfk6hhllj0', '127.0.0.1', 1619161999, '__ci_last_regenerate|i:1619161124;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('kua88ph305c8ntecnnb8quns5oo7ks8e', '127.0.0.1', 1617172037, '__ci_last_regenerate|i:1617172037;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l2sq7g8766dgdr12vtscges16bvgcjv5', '127.0.0.1', 1618030962, '__ci_last_regenerate|i:1618030962;'),
('l3kvscr61hp8or1u50sdta03jaa5m7i5', '127.0.0.1', 1616165937, '__ci_last_regenerate|i:1616165937;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l4orkho4ondr49f4birbff8ikcflsie0', '127.0.0.1', 1617176703, '__ci_last_regenerate|i:1617176703;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l5iv79lsdnhqf5uaj9uut69vvkhh984u', '127.0.0.1', 1616050113, '__ci_last_regenerate|i:1616050113;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l8fsat956rfuamvtonqke02p3qncdqoi', '127.0.0.1', 1623934356, '__ci_last_regenerate|i:1623934345;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l9g265ji9158itogh61g6gp88812prae', '127.0.0.1', 1617603626, '__ci_last_regenerate|i:1617603626;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('l9lgpdrdl3dcikn4megq3pah8dfctb0d', '127.0.0.1', 1619762236, '__ci_last_regenerate|i:1619762236;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('lf21239hmosbblu2sqfo81mi4jik00b4', '127.0.0.1', 1616639045, '__ci_last_regenerate|i:1616639045;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('lh0m3qeimjadfa3tngo9rh8n3sg48co4', '127.0.0.1', 1619761251, '__ci_last_regenerate|i:1619761251;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('llgvs5ootuepjg57spfn3ou3in8hqdfi', '127.0.0.1', 1616416668, '__ci_last_regenerate|i:1616416668;'),
('lo0kel5268j9u3n98hu15fdnb1fg2k3f', '127.0.0.1', 1616651923, '__ci_last_regenerate|i:1616651923;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('lokjosh6bb8pc775664l2nfrrs288nqu', '127.0.0.1', 1617858224, '__ci_last_regenerate|i:1617858224;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('lrhgu6gjre522r7eirel5q4beurcnbig', '127.0.0.1', 1617005103, '__ci_last_regenerate|i:1617005103;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ltllhe3aj0lj1ls3j7tavlq4sbtsvor6', '127.0.0.1', 1616405329, '__ci_last_regenerate|i:1616405329;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('lutf5o0n1u9u896t3nagjqbd06m92l3q', '127.0.0.1', 1633418015, '__ci_last_regenerate|i:1633418015;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('m0jnjb6diqo72bltie4oq0540rstv799', '127.0.0.1', 1618029504, '__ci_last_regenerate|i:1618029504;'),
('m52ms2gupjfd72iqn2itdmr3lovoadsr', '127.0.0.1', 1632620856, '__ci_last_regenerate|i:1632620754;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('m5vf5vpssa088rq2qfsf94ugoa75j9ut', '127.0.0.1', 1617612118, '__ci_last_regenerate|i:1617612118;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('m780o1tep3il7286u0gf4d8olkbrlba6', '127.0.0.1', 1616742476, '__ci_last_regenerate|i:1616742476;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('m9tcdeihtgf68t2equ3diujd7mhi52ds', '127.0.0.1', 1617675343, '__ci_last_regenerate|i:1617675343;'),
('mak5d3prkqlh40vefbj4kg55hj27ovsd', '127.0.0.1', 1616245333, '__ci_last_regenerate|i:1616245333;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mbbfr2p2p76o0nrbb2flhakgl8tg33ih', '127.0.0.1', 1615970678, '__ci_last_regenerate|i:1615970678;has_loggedin|b:1;id|s:2:\"11\";user_id|s:32:\"5663eb373c84f558af480f80fb5bf980\";email|s:5:\"a@a.c\";password|s:32:\"202cb962ac59075b964b07152d234b70\";blokir|s:1:\"0\";'),
('mhjd4rm3h49rv0gfms2tkhh5ihs4tqo2', '127.0.0.1', 1617596874, '__ci_last_regenerate|i:1617596874;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mj5lqo1omudpchrls5a6su62osats6gt', '127.0.0.1', 1616383784, '__ci_last_regenerate|i:1616383784;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mj9s330b4i5gdc961b0mlgv9tq7ivr6f', '127.0.0.1', 1617613480, '__ci_last_regenerate|i:1617613480;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mjuh58skim7ieqb3108as5d3hm8ro5v2', '127.0.0.1', 1617590249, '__ci_last_regenerate|i:1617590249;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mqcbv0verk2jdd1k3vk926h99ig2pmfn', '127.0.0.1', 1617158172, '__ci_last_regenerate|i:1617158172;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mr51beeqvvbh9ri98ruuchr1v9en2a85', '127.0.0.1', 1616482928, '__ci_last_regenerate|i:1616482928;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('mrn0csqt15mqvtcn30joo9mno7qgaqkd', '127.0.0.1', 1623810232, '__ci_last_regenerate|i:1623810232;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('muho4tmaenmf0gu6kv7prc4igt77o2g8', '127.0.0.1', 1617240992, '__ci_last_regenerate|i:1617240992;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n02gavg4c2ps2v4o3cbln8rs9019p24m', '127.0.0.1', 1617240261, '__ci_last_regenerate|i:1617240261;'),
('n17ie9ukro4m0r58euoq1q0fgpuh39u7', '127.0.0.1', 1633415996, '__ci_last_regenerate|i:1633415996;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n19bq37cltu4ge8eanbpuc9rec4kmru8', '127.0.0.1', 1617175768, '__ci_last_regenerate|i:1617175768;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n3270ld2igcokhd0efgig2u979f1v7u9', '127.0.0.1', 1615961768, '__ci_last_regenerate|i:1615961768;'),
('n54voi8o5pelhmuq79kn4ifqetafgeo4', '127.0.0.1', 1616121601, '__ci_last_regenerate|i:1616121601;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n5vbgk4qg13b3tohvv9b6fs5uqr4jg38', '127.0.0.1', 1616391620, '__ci_last_regenerate|i:1616391620;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n768e3anpl52218jsouv02obol30ld3j', '127.0.0.1', 1617605932, '__ci_last_regenerate|i:1617605932;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n7lbfv7flf8fbm8amfu5dtaeardkl582', '127.0.0.1', 1617613078, '__ci_last_regenerate|i:1617613078;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n8g57qt2e4p6sag11mu5uul4mgvcv6me', '127.0.0.1', 1616374129, '__ci_last_regenerate|i:1616374129;'),
('n928h93fq696k4e1272odrtajvk1jdho', '127.0.0.1', 1618993620, '__ci_last_regenerate|i:1618993395;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('n97ns3b1jfll5uiddrtolahe2kekm67q', '127.0.0.1', 1616992318, '__ci_last_regenerate|i:1616992318;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nbse178pjtgoakh78n5o8vv7b3tkrenq', '127.0.0.1', 1633418335, '__ci_last_regenerate|i:1633418335;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ncd5ki562oohrjb9op7mt75v43s60agi', '127.0.0.1', 1618296035, '__ci_last_regenerate|i:1618296035;'),
('nd9du43brgu7v92drqr0e8u7req45vdb', '127.0.0.1', 1616080175, '__ci_last_regenerate|i:1616080175;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nfaiaq8h805o38pr8ip22uuk245ldbm7', '127.0.0.1', 1617068106, '__ci_last_regenerate|i:1617068106;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nh87uknp0n2sgokonv4rqvcmuvtrvgv2', '127.0.0.1', 1617613975, '__ci_last_regenerate|i:1617613868;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nk3k28dlj99qclnkqk8dodvcdra2gbl2', '127.0.0.1', 1617592503, '__ci_last_regenerate|i:1617592503;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nk4nkkdj4ep7ti9ocs8fm5mnam3vvabr', '127.0.0.1', 1619764182, '__ci_last_regenerate|i:1619763969;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nken6jnbnapgibc1r97u9g0qhe5h7l87', '127.0.0.1', 1617240501, '__ci_last_regenerate|i:1617240501;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nmfbrnc8cql2k2boiefmhhb5nk17rbdm', '127.0.0.1', 1616164040, '__ci_last_regenerate|i:1616164040;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nomnibm4a6h01vpsm2ngt8kiqq9hss7g', '127.0.0.1', 1616724897, '__ci_last_regenerate|i:1616724871;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nqqh3mlh75bfbl2brs645kcic4mq5r88', '127.0.0.1', 1617611803, '__ci_last_regenerate|i:1617611803;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nv7gta28hdd91rnfmdapt2ogo6cuk1cn', '127.0.0.1', 1616389792, '__ci_last_regenerate|i:1616389792;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('nvr1o0nel3h5dkqktfk74db6jsg81dk8', '127.0.0.1', 1616121090, '__ci_last_regenerate|i:1616121090;'),
('o0tnjd2g0ek8o16bhigt8tfd3ervvcl7', '127.0.0.1', 1616245948, '__ci_last_regenerate|i:1616245948;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('o2s7b5s3117bhcetvhme75v9v7jds45f', '127.0.0.1', 1616162949, '__ci_last_regenerate|i:1616162949;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('o5o04j7uog5u7giuf29mol82sheoa2io', '127.0.0.1', 1617675767, '__ci_last_regenerate|i:1617675767;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('o8ucf8r56ko3s97vp5b446pjnu9e2qhf', '127.0.0.1', 1616082555, '__ci_last_regenerate|i:1616082555;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('oaqsjc2rlchmpejq2ku2ge9o11gk9k5k', '127.0.0.1', 1617179651, '__ci_last_regenerate|i:1617179651;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('odptdfe35klhbgd3fcnmlb85oc0h2g4i', '127.0.0.1', 1616041351, '__ci_last_regenerate|i:1616041351;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ohdvo6cq4s430f0m0f4prc97l6k4juvb', '127.0.0.1', 1617162668, '__ci_last_regenerate|i:1617162668;'),
('oisj1icl4hhtu0h721ef9skv6e6e79ng', '127.0.0.1', 1617083727, '__ci_last_regenerate|i:1617083464;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('omdlognncrh8nh8q6n0mlg68g2uqc0m7', '127.0.0.1', 1616041002, '__ci_last_regenerate|i:1616041002;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('omqffna5bhdh5dd9kdhat0kc9lflu0oc', '127.0.0.1', 1615946253, '__ci_last_regenerate|i:1615946253;'),
('onbotuapipk3b4mtj8bce4m08erp05a7', '127.0.0.1', 1616079524, '__ci_last_regenerate|i:1616079524;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('osq2kjheoute824scsrdhtclq495l24o', '127.0.0.1', 1616164924, '__ci_last_regenerate|i:1616164924;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('otbh6pbh565tqoo4ub35pio9kavjdv3t', '127.0.0.1', 1617162656, '__ci_last_regenerate|i:1617162656;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('our9cb33mviv4inosfvm6knp9v50q49b', '127.0.0.1', 1622165353, '__ci_last_regenerate|i:1622165353;'),
('ovh7icl9j81m8l3n7vu3u311nqn2oaok', '127.0.0.1', 1616040312, '__ci_last_regenerate|i:1616040312;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('p0m6idqado523qnt8cgo0lag9o9jicmn', '127.0.0.1', 1616746408, '__ci_last_regenerate|i:1616746408;'),
('p4f6openthehmtd8v4a28u1dbvlib1oo', '127.0.0.1', 1616416734, '__ci_last_regenerate|i:1616416585;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('p68o22ouadp8n495904fu9f6080ulke8', '127.0.0.1', 1616387507, '__ci_last_regenerate|i:1616387507;'),
('p6uirfj1j64t5bj1t1htf7nikp9mnq0m', '127.0.0.1', 1617673559, '__ci_last_regenerate|i:1617673559;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('p95ps2itu9uu6kfrumctot6d5tguhf1o', '127.0.0.1', 1616085572, '__ci_last_regenerate|i:1616085572;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pctsp29qnl84jj9pj5hqnkrcj3fldv8p', '127.0.0.1', 1618216717, '__ci_last_regenerate|i:1618216717;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pe74825q9lilm5v8spd5djfpanjhrphh', '127.0.0.1', 1633423135, '__ci_last_regenerate|i:1633423135;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pgfaepmguvv7erm5jdqboh2h19o7o9f2', '127.0.0.1', 1616405648, '__ci_last_regenerate|i:1616405648;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pksqt4l2l7tfdhcn87phpf4f24bc9lad', '127.0.0.1', 1618905233, '__ci_last_regenerate|i:1618905233;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pmahmtqrck2bi6c1tnv4irrskav9hatf', '127.0.0.1', 1617586390, '__ci_last_regenerate|i:1617586390;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('pns4ta06vgmv9nfpfnkrm9q46lvmsgoj', '127.0.0.1', 1616049335, '__ci_last_regenerate|i:1616049335;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('puike9g49iptv1qr8fpie33k4al50ir3', '127.0.0.1', 1616245861, '__ci_last_regenerate|i:1616245861;'),
('q0pujbqn1bakd5o5ukc8afs8lpi2k40t', '127.0.0.1', 1616077019, '__ci_last_regenerate|i:1616077019;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q4ki66eqh94hs7mt79kkffc31v2o1nse', '127.0.0.1', 1616999644, '__ci_last_regenerate|i:1616999644;'),
('q4qqiqov7g2grjhnfu84t85fe7ao3ato', '::1', 1619162568, '__ci_last_regenerate|i:1619162555;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q5b5cqbpim941m69ht6pregaa8cctocb', '127.0.0.1', 1616042074, '__ci_last_regenerate|i:1616042074;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q5odj59uaeo2bbk18v0vrdmqrmg20u77', '127.0.0.1', 1616081280, '__ci_last_regenerate|i:1616081280;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q6l0eu3h3otucse42ai4f5ho1gr4qopg', '127.0.0.1', 1616474982, '__ci_last_regenerate|i:1616474982;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q814qfoj929e4i1cufshjv13kt7f93kp', '127.0.0.1', 1616416668, '__ci_last_regenerate|i:1616416668;'),
('q8gudmeaode1jkb5luf9vk09a1jl443q', '127.0.0.1', 1616640108, '__ci_last_regenerate|i:1616640108;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('q9hj6uqv29kh4ulc1fmj7r7o8vo8mldh', '127.0.0.1', 1617091512, '__ci_last_regenerate|i:1617091512;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qd4shvuj2rnkh33cakhmv1hjkl74ev5o', '127.0.0.1', 1615968973, '__ci_last_regenerate|i:1615968973;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('qdtifpf0nsho9ndmp78o5r7n116hfsrn', '127.0.0.1', 1617077087, '__ci_last_regenerate|i:1617077087;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qe1298g88hl8h9dviaj75k20l9ckvqjg', '127.0.0.1', 1616724758, '__ci_last_regenerate|i:1616724758;'),
('qgacu9ganl1ac9di1tatt0husvkugt2g', '127.0.0.1', 1616491086, '__ci_last_regenerate|i:1616491086;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qhhbo6hbpk2ib0aeqpn5jvg763ej2b32', '127.0.0.1', 1616655951, '__ci_last_regenerate|i:1616653229;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qmsdqobbodnoc6rcnn7a7kpvks7tqnch', '127.0.0.1', 1616136333, '__ci_last_regenerate|i:1616136333;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qqoaeq0oolrtfcgmg7l7ft9j110fuqac', '127.0.0.1', 1623810330, '__ci_last_regenerate|i:1623810330;'),
('qsrv36vmsq1aufs9amu86h11615u9j7m', '127.0.0.1', 1616466867, '__ci_last_regenerate|i:1616466867;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qvc0fq8m4jdoavb2jmgaufq73fh068b8', '127.0.0.1', 1619756790, '__ci_last_regenerate|i:1619756790;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qve696b4mit2l340c0seijo28r96ksti', '127.0.0.1', 1616042405, '__ci_last_regenerate|i:1616042405;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('qvrmpc3co37binuvrmqfdefrpd7d4f1j', '127.0.0.1', 1616383091, '__ci_last_regenerate|i:1616383091;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('r0ak0pq31a08koiv979cqgv1t9gn2s43', '127.0.0.1', 1618993395, '__ci_last_regenerate|i:1618993395;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('r4lkb75gtatlgifo0i4l160kd6p9cr4r', '127.0.0.1', 1616245851, '__ci_last_regenerate|i:1616245851;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('r5mvd68qg53mprr7eium7p0ub8ji3esl', '127.0.0.1', 1615952451, '__ci_last_regenerate|i:1615952351;'),
('r6r3pn0o2qg79t1use8s71ovpr3bfq6e', '127.0.0.1', 1616490610, '__ci_last_regenerate|i:1616490610;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('r9jjplq9h4sed7pfn0ua86pjesdooht1', '127.0.0.1', 1615969491, '__ci_last_regenerate|i:1615969491;has_loggedin|b:1;id|s:1:\"5\";user_id|s:32:\"d4239bd5e6b182bd99a2ed9255e8e334\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rb0sq5gjibm2o7gn15316abq9b9a1fm1', '127.0.0.1', 1633414921, '__ci_last_regenerate|i:1633414921;'),
('rebv2i3ng81k59vk5tlec157lrmtr89o', '127.0.0.1', 1617267545, '__ci_last_regenerate|i:1617267545;'),
('reff8taj0498f1b1jgv7ine24g6a564k', '127.0.0.1', 1616741867, '__ci_last_regenerate|i:1616741867;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rgcrvafvlj4t33djqdhgrnfu4vt12rgs', '127.0.0.1', 1615957089, '__ci_last_regenerate|i:1615957089;'),
('ri1e0vec0m045o8u6mue72smvc08rodq', '127.0.0.1', 1617269702, '__ci_last_regenerate|i:1617269676;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rioh3f2vkk76sl7h9o89s7u7f661n0vl', '127.0.0.1', 1617596572, '__ci_last_regenerate|i:1617596572;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rj1v7tcbql2a405hl66r9uko7030h3bb', '127.0.0.1', 1617587376, '__ci_last_regenerate|i:1617587376;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rjsl01c9pbsqplnomuf6po4fh5tro9m7', '127.0.0.1', 1617182849, '__ci_last_regenerate|i:1617182849;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rmc7r08r7601f1tqmb7gf0f8r5brmggi', '127.0.0.1', 1615972716, '__ci_last_regenerate|i:1615972528;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rntjp039vu5trh8krcs77nvtpfr5fjn7', '127.0.0.1', 1616085210, '__ci_last_regenerate|i:1616085210;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ropq5j7h6j6tgo5nl691thq5ls5f7sog', '127.0.0.1', 1616049724, '__ci_last_regenerate|i:1616049724;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rp3kpi1pf4o6lspqndjunnqfn5ie313v', '127.0.0.1', 1616341670, '__ci_last_regenerate|i:1616341670;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rpp9f1hthvj5nincql13plo6j0ep7i6m', '127.0.0.1', 1615896462, '__ci_last_regenerate|i:1615896462;'),
('rpshj5tnjecrs32nh5ehcqkrnf0jbra1', '127.0.0.1', 1618218452, '__ci_last_regenerate|i:1618218452;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('rsv0ihf8m6f2man06pm145tet0mcbrsh', '127.0.0.1', 1617675343, '__ci_last_regenerate|i:1617675343;'),
('rt9hfco6epuaip609nu4jro7k8due45m', '127.0.0.1', 1617078060, '__ci_last_regenerate|i:1617078060;'),
('rvvc4arg83h18udsh2nl52ak65o5mr07', '127.0.0.1', 1617607477, '__ci_last_regenerate|i:1617607477;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('s0b3rv4b30r4b0481el5hbjbeobgicr5', '127.0.0.1', 1633422297, '__ci_last_regenerate|i:1633422297;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('s1ldac3t9abbbushphsubdfi418j9gkt', '127.0.0.1', 1633415223, '__ci_last_regenerate|i:1633415223;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('s2g2qnqpdnmqfjo5g43abi9i7e41jqor', '127.0.0.1', 1617173539, '__ci_last_regenerate|i:1617173539;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('s6p4mfehgjiefdhj8bl9o6aq6nju3imf', '127.0.0.1', 1616746415, '__ci_last_regenerate|i:1616746415;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sad1slqv84s40vnd3gegksevuva536nm', '127.0.0.1', 1616342524, '__ci_last_regenerate|i:1616342523;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sj5k7aqbqj523s4hgrpkincqo5pub2c9', '127.0.0.1', 1616640472, '__ci_last_regenerate|i:1616640472;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sju4l3veu013aetcjsfu8tqrs39c2ial', '127.0.0.1', 1618993609, '__ci_last_regenerate|i:1618993609;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sn1ehtnpc7h4kq0h3prqlbo1j3qqq87v', '127.0.0.1', 1616746994, '__ci_last_regenerate|i:1616746994;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('spm6bne84uag57klfcuht9utmnpuleof', '127.0.0.1', 1616391245, '__ci_last_regenerate|i:1616391245;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sq6dkmu7m9d4si16c3ami5bssoi9utq9', '127.0.0.1', 1616387342, '__ci_last_regenerate|i:1616387342;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('sqirpedn2mkuc2urk09lptia08552b94', '127.0.0.1', 1616643541, '__ci_last_regenerate|i:1616643541;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('st4oau895nq9tag1eed7bd8bhqnro4mh', '127.0.0.1', 1617612146, '__ci_last_regenerate|i:1617612146;'),
('suaa3le1sfi51hm058l1uv98urjhp4l9', '127.0.0.1', 1617092273, '__ci_last_regenerate|i:1617092273;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('t0llfr89bvpsgvh21nj9vulgkfrt45v6', '127.0.0.1', 1618985866, '__ci_last_regenerate|i:1618985866;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('t1dfobg4rtjilu8f9kmq1hr2c40h840m', '127.0.0.1', 1618217907, '__ci_last_regenerate|i:1618217907;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('t307cqf3u6a8veo72spedq71t2uktq5n', '127.0.0.1', 1616383416, '__ci_last_regenerate|i:1616383416;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('t5jhjffc5v13tpnqm44ec5aensp84gmt', '127.0.0.1', 1616484641, '__ci_last_regenerate|i:1616484641;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ta526g7cbr7shsvo30if1lru5jetgaop', '127.0.0.1', 1617079224, '__ci_last_regenerate|i:1617079224;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tdfn6ie8dhjv82thpueole634b0qqves', '127.0.0.1', 1615948207, '__ci_last_regenerate|i:1615948207;'),
('te9e9l3lk4se6kf16adeq6k0dirqt1u4', '127.0.0.1', 1619762930, '__ci_last_regenerate|i:1619762930;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tg3oa53bng629uhu8b91vv50ln4hp9iu', '127.0.0.1', 1616999644, '__ci_last_regenerate|i:1616999644;'),
('tg62b96jekgnbmhpq675k9luqc85bp9t', '127.0.0.1', 1616997856, '__ci_last_regenerate|i:1616997856;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tk1p7tudrjqb3h9irfpe2glgroauafl3', '127.0.0.1', 1617082792, '__ci_last_regenerate|i:1617082792;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('toi1dkqd1rms27ep5pafg9r54ngrdd3p', '127.0.0.1', 1617267455, '__ci_last_regenerate|i:1617267455;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tpij986kjf7tq8gmec9ejq6vr03qojur', '127.0.0.1', 1617164839, '__ci_last_regenerate|i:1617164839;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tq0iinusjmc42v9mbsj229m9503ej6v8', '127.0.0.1', 1617609085, '__ci_last_regenerate|i:1617609085;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tt3apc1h2jcn7rgt3cfe6795n308t225', '127.0.0.1', 1616639562, '__ci_last_regenerate|i:1616639562;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('tust9esicq4qbrp56lfhtv7km6d0fuha', '127.0.0.1', 1616342523, '__ci_last_regenerate|i:1616342523;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('u250hd4q4gqljqp8po98dclmjl5f65tb', '127.0.0.1', 1618986235, '__ci_last_regenerate|i:1618986235;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('u33mg5qghtvg37fd5io37amddh1bfqnu', '127.0.0.1', 1619761627, '__ci_last_regenerate|i:1619761627;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('u5sekf56827lif7cd2nrb737btksvr1n', '127.0.0.1', 1616743471, '__ci_last_regenerate|i:1616743471;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('u7aod1rmjbmhmso3ps6km7pe77faq2g9', '127.0.0.1', 1618386223, '__ci_last_regenerate|i:1618386223;'),
('u7jkecb1uq7buvoaqrfgfl5v7iv4r71h', '127.0.0.1', 1617268871, '__ci_last_regenerate|i:1617268871;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('u8e3musmk7ihihvcnb6735vtr9eu514h', '127.0.0.1', 1616080622, '__ci_last_regenerate|i:1616080622;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('uaiovvbipjpm1l3mf9456ouqfhjdjqdg', '127.0.0.1', 1616747468, '__ci_last_regenerate|i:1616747468;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('ub7blins00b2tfblh7d7tnvr99nfvkie', '127.0.0.1', 1617611496, '__ci_last_regenerate|i:1617611496;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('uc2007q0rti6lkkvbubochsqq5mdfra7', '127.0.0.1', 1616159949, '__ci_last_regenerate|i:1616159949;'),
('uhknt6qlahg4pp125a0ejagmonkp8ni0', '::1', 1619412208, '__ci_last_regenerate|i:1619411562;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('uhm96s5k3jn54ffc1t1vl6t3bd6kcbee', '127.0.0.1', 1617858249, '__ci_last_regenerate|i:1617858249;'),
('uk19kt7v87m10k29pl9jmdb9rag08uti', '127.0.0.1', 1617606998, '__ci_last_regenerate|i:1617606998;'),
('unh6idhr5bjds4oon9m81mqv1nu8m314', '127.0.0.1', 1619763969, '__ci_last_regenerate|i:1619763969;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('uond83a9r6pavusnm0phv6bh67amd041', '127.0.0.1', 1617612146, '__ci_last_regenerate|i:1617612146;'),
('uq0j3bm378h7ab02gvafda6f1u803a7t', '127.0.0.1', 1618901897, '__ci_last_regenerate|i:1618901897;'),
('ut1mqqjvu5479sfepooqe0ksq5hgln8d', '127.0.0.1', 1616246510, '__ci_last_regenerate|i:1616246321;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('uv9f3cq28rsals2u8p6qa3mb237pqsdg', '127.0.0.1', 1617159278, '__ci_last_regenerate|i:1617159278;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v14caqcah41ffeps6qj1uebsuiodhrpp', '127.0.0.1', 1617607937, '__ci_last_regenerate|i:1617607937;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v1j4voahcls2c8kbrs3r8gnr6tqjkdvm', '127.0.0.1', 1616392449, '__ci_last_regenerate|i:1616392449;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v1q9f8g3eojcsa6qakk0jitrrsassr6b', '127.0.0.1', 1617180297, '__ci_last_regenerate|i:1617180297;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v47hv9fl47cbpa3c3qognoam4519iqas', '127.0.0.1', 1616136699, '__ci_last_regenerate|i:1616136699;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v49bi47cb1mb5p56ujqaj6tp39h9n7q0', '127.0.0.1', 1616076523, '__ci_last_regenerate|i:1616076523;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v5kf1q3la5olhr6bs0je7b16mrgi6otv', '127.0.0.1', 1618901599, '__ci_last_regenerate|i:1618901599;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v94gpt6rt39qo9ivug60n9s12kqnvv5v', '127.0.0.1', 1618387020, '__ci_last_regenerate|i:1618386893;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('v94t753d4f494nth5mvi3b36f0mftfv9', '127.0.0.1', 1616382132, '__ci_last_regenerate|i:1616382132;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vbkcthnfkln9bdi4ls5bqo3vflqvpb8e', '127.0.0.1', 1616745664, '__ci_last_regenerate|i:1616745664;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vc76pfn6hl178v82avlhee4tfn5ctgtr', '127.0.0.1', 1617604268, '__ci_last_regenerate|i:1617604268;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vfkf0m33tr0vokae51ju1olp0pcnsefp', '127.0.0.1', 1619072490, '__ci_last_regenerate|i:1619072290;has_loggedin|b:1;id|s:2:\"15\";user_id|s:32:\"202cb962ac59075b964b07152d234b70\";email|s:5:\"q@q.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vhqjclqqd700uo7rb1rvf1o0r00djbvk', '127.0.0.1', 1616730047, '__ci_last_regenerate|i:1616730047;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vmps39rqi3k50u633o5e2hah1gc7dmjj', '127.0.0.1', 1619760877, '__ci_last_regenerate|i:1619760877;has_loggedin|b:1;id|s:2:\"13\";user_id|s:32:\"e807f1fcf82d132f9bb018ca6738a19f\";email|s:10:\"mail@a.com\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vs0b2a5tlkk1bu03gmoec6qs2pve6gif', '127.0.0.1', 1616479193, '__ci_last_regenerate|i:1616479193;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";'),
('vtb9vaq2e5h2uls83pkds558v3op6gip', '127.0.0.1', 1618901897, '__ci_last_regenerate|i:1618901897;'),
('vv7vikajj70rqmtv336cqqajlsiaoc0u', '127.0.0.1', 1633415391, '__ci_last_regenerate|i:1633415391;'),
('vvicg98k30u8aanoacpgjtd6vk29dkl1', '127.0.0.1', 1618032916, '__ci_last_regenerate|i:1618032916;has_loggedin|b:1;id|s:2:\"14\";user_id|s:32:\"aad8600793f244d138ebf228fa786fcf\";email|s:5:\"a@a.c\";password|s:32:\"c4ca4238a0b923820dcc509a6f75849b\";blokir|s:1:\"0\";');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `nama_laporan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `lokasi` varchar(250) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `status_laporan` varchar(15) NOT NULL,
  `report_by` varchar(32) NOT NULL,
  `tanggal_lapor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verifikasi_by` varchar(32) NOT NULL,
  `tanggal_verifikasi` datetime NOT NULL,
  `proses_by` varchar(32) NOT NULL,
  `tanggal_proses` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `tindakan` varchar(150) NOT NULL,
  `foto_tindakan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `notifikasi_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `level` varchar(15) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `judul` varchar(50) NOT NULL,
  `isi` varchar(250) NOT NULL,
  `baca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_fp`
--

CREATE TABLE `ref_fp` (
  `id` int(11) NOT NULL,
  `id_layanan` varchar(16) NOT NULL,
  `id_fp` varchar(16) NOT NULL,
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ref_fp`
--

INSERT INTO `ref_fp` (`id`, `id_layanan`, `id_fp`, `add_time`) VALUES
(13, 'ln_60588dc2ea78c', 'fp_605803dfc81bf', '2021-03-25 13:00:20'),
(14, 'ln_60588dc2ea78c', 'fp_60580e4ae5caf', '2021-03-25 13:00:20'),
(15, 'ln_60588dc2ea78c', 'fp_60580f9ecea37', '2021-03-25 13:00:20'),
(37, 'ln_60580e5518902', 'fp_605803dfc81bf', '2021-03-26 09:14:57'),
(38, 'ln_60580e5518902', 'fp_60580e4ae5caf', '2021-03-26 09:14:57'),
(39, 'ln_60580e5518902', 'fp_60580f9ecea37', '2021-03-26 09:14:57'),
(40, 'LN_606ace54b21fd', 'fp_605803dfc81bf', '2021-04-05 15:46:12'),
(41, 'LN_606ace54b21fd', 'fp_60580e4ae5caf', '2021-04-05 15:46:12'),
(42, 'LN_606ace54b21fd', 'fp_60580f9ecea37', '2021-04-05 15:46:12'),
(43, 'LN_606ace791a46c', 'fp_605803dfc81bf', '2021-04-05 15:46:49'),
(44, 'LN_606ace791a46c', 'fp_60580e4ae5caf', '2021-04-05 15:46:49'),
(45, 'LN_606ace791a46c', 'fp_60580f9ecea37', '2021-04-05 15:46:49'),
(46, 'LN_606acf7369db3', 'fp_605803dfc81bf', '2021-04-05 15:50:59'),
(47, 'LN_606acf7369db3', 'fp_60580e4ae5caf', '2021-04-05 15:50:59'),
(48, 'LN_606acf7369db3', 'fp_60580f9ecea37', '2021-04-05 15:50:59'),
(51, 'ln_6058654ddb1fb', 'fp_605803dfc81bf', '2021-04-05 15:58:23'),
(52, 'ln_6058654ddb1fb', 'fp_60580e4ae5caf', '2021-04-05 15:58:23'),
(53, 'LN_606ad0feb7607', 'fp_60580f9ecea37', '2021-04-05 15:58:42'),
(58, 'LN_607132b9173e1', 'fp_605803dfc81bf', '2021-04-10 12:11:31'),
(59, 'LN_607132b9173e1', 'fp_60580e4ae5caf', '2021-04-10 12:11:31'),
(60, 'LN_607132b9173e1', 'fp_60580f9ecea37', '2021-04-10 12:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `ref_fp_upload`
--

CREATE TABLE `ref_fp_upload` (
  `id` int(11) NOT NULL,
  `layanan_id` varchar(16) DEFAULT NULL,
  `fp_id` varchar(16) DEFAULT NULL,
  `path_upload` varchar(150) DEFAULT NULL,
  `status_upload` tinyint(1) DEFAULT NULL,
  `add_id` varchar(32) DEFAULT NULL,
  `upload_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ref_fp_upload`
--

INSERT INTO `ref_fp_upload` (`id`, `layanan_id`, `fp_id`, `path_upload`, `status_upload`, `add_id`, `upload_time`) VALUES
(60, 'ln_60580e5518902', 'fp_60580f9ecea37', 'aad8600793f244d138ebf228fa786fcf-ln_60580e5518902-fp_60580f9ecea37.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-05 14:34:23'),
(63, 'ln_6058654ddb1fb', 'fp_60586535be3dc', 'aad8600793f244d138ebf228fa786fcf-ln_6058654ddb1fb-fp_60586535be3dc.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-05 15:25:12'),
(64, 'ln_6058654ddb1fb', 'fp_605803dfc81bf', 'aad8600793f244d138ebf228fa786fcf-ln_6058654ddb1fb-fp_605803dfc81bf-606bc42f2131b.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-06 09:15:11'),
(65, 'ln_6058654ddb1fb', 'fp_60580e4ae5caf', 'aad8600793f244d138ebf228fa786fcf-ln_6058654ddb1fb-fp_60580e4ae5caf-606bc437c73f8.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-06 09:15:19'),
(67, 'LN_607132b9173e1', 'fp_60580e4ae5caf', 'aad8600793f244d138ebf228fa786fcf-LN_607132b9173e1-fp_60580e4ae5caf-607134333c293.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-10 12:14:27'),
(68, 'LN_607132b9173e1', 'fp_60580f9ecea37', 'aad8600793f244d138ebf228fa786fcf-LN_607132b9173e1-fp_60580f9ecea37-6071348047825.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-10 12:15:44'),
(69, 'LN_607132b9173e1', 'fp_605803dfc81bf', 'aad8600793f244d138ebf228fa786fcf-LN_607132b9173e1-fp_605803dfc81bf-6071362892acf.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-10 12:22:48'),
(73, 'ln_60580e5518902', 'fp_60580e4ae5caf', 'aad8600793f244d138ebf228fa786fcf-ln_60580e5518902-fp_60580e4ae5caf-60740a4ff3a7f.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-12 15:52:32'),
(76, 'ln_60580e5518902', 'fp_605803dfc81bf', 'aad8600793f244d138ebf228fa786fcf-ln_60580e5518902-fp_605803dfc81bf-60740bbcb793d.png', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-04-12 15:58:36'),
(77, 'ln_60580e5518902', 'fp_605803dfc81bf', 'e10adc3949ba59abbe56e057f20f883e-ln_60580e5518902-fp_605803dfc81bf-608110bc3015a.png', 1, 'e10adc3949ba59abbe56e057f20f883e', '2021-04-22 12:59:24'),
(78, 'ln_60580e5518902', 'fp_60580e4ae5caf', 'e10adc3949ba59abbe56e057f20f883e-ln_60580e5518902-fp_60580e4ae5caf-608110c29b525.png', 1, 'e10adc3949ba59abbe56e057f20f883e', '2021-04-22 12:59:30'),
(79, 'ln_60580e5518902', 'fp_60580f9ecea37', 'e10adc3949ba59abbe56e057f20f883e-ln_60580e5518902-fp_60580f9ecea37-608110cb1cc9d.jpg', 1, 'e10adc3949ba59abbe56e057f20f883e', '2021-04-22 12:59:39'),
(80, 'ln_60588dc2ea78c', 'fp_605803dfc81bf', 'aad8600793f244d138ebf228fa786fcf-ln_60588dc2ea78c-fp_605803dfc81bf-614fd03242eb1.jpg', 1, 'aad8600793f244d138ebf228fa786fcf', '2021-09-26 08:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pengajuan`
--

CREATE TABLE `ref_pengajuan` (
  `id_pengajuan` varchar(16) NOT NULL,
  `layanan_id` varchar(16) NOT NULL,
  `add_id` varchar(32) NOT NULL,
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` varchar(150) NOT NULL,
  `status_pengajuan` tinyint(1) NOT NULL,
  `operator_id` varchar(32) DEFAULT NULL,
  `operator_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `operator_note` varchar(250) NOT NULL,
  `ka_ukpd_id` varchar(32) DEFAULT NULL,
  `ka_ukpd_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `ka_ukpd_note` varchar(250) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ref_pengajuan`
--

INSERT INTO `ref_pengajuan` (`id_pengajuan`, `layanan_id`, `add_id`, `add_time`, `keterangan`, `status_pengajuan`, `operator_id`, `operator_time`, `operator_note`, `ka_ukpd_id`, `ka_ukpd_time`, `ka_ukpd_note`, `is_open`) VALUES
('PN_606abf9b68139', 'ln_60580e5518902', 'aad8600793f244d138ebf228fa786fcf', '2021-04-05 14:43:23', '', 1, 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-05 14:43:23', '', '202cb962ac59075b964b07152d234b70', '2021-04-05 14:43:23', '', 0),
('PN_606ac9c87d76f', 'ln_6058654ddb1fb', 'aad8600793f244d138ebf228fa786fcf', '2021-04-05 15:26:48', 'Nama tersebut diatas berdasarkan sertifikat hak milik. Mengajukan pembuatan Surat Izin Mendirikan Bangunan', 1, 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-05 15:26:48', 'KK buram', '202cb962ac59075b964b07152d234b70', '2021-04-05 15:26:48', '', 1),
('PN_607134a722794', 'LN_607132b9173e1', 'aad8600793f244d138ebf228fa786fcf', '2021-04-10 12:16:23', 'Nama tersebut diatas berdasarkan sertifikat hak milik', 1, 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-10 12:16:23', '', '202cb962ac59075b964b07152d234b70', '2021-04-10 12:16:23', '', 1),
('PN_608110dd13ccb', 'ln_60580e5518902', 'e10adc3949ba59abbe56e057f20f883e', '2021-04-22 12:59:57', 'Pemohon mengajukan rekomendasi surat keterangan tidak mampu dengan menyampaikan berkas persyaratan.', 1, 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-22 12:59:57', '', '202cb962ac59075b964b07152d234b70', '2021-04-22 12:59:57', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rel_fp`
--

CREATE TABLE `rel_fp` (
  `id_fp` varchar(16) NOT NULL,
  `desc_fp` varchar(50) NOT NULL,
  `add_id` varchar(32) NOT NULL,
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rel_fp`
--

INSERT INTO `rel_fp` (`id_fp`, `desc_fp`, `add_id`, `add_time`) VALUES
('fp_605803dfc81bf', 'KTP', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 09:41:35'),
('fp_60580e4ae5caf', 'Kartu Keluarga', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 10:26:02'),
('fp_60580f9ecea37', 'Surat Keterangan RT/RW', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 10:31:42'),
('fp_60586527c3dda', 'Pasport', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 16:36:39'),
('fp_60586535be3dc', 'Surat Nikah', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 16:36:53'),
('fp_60588f5bde8c6', 'SKCK', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 19:36:43'),
('FP_6071332222bb0', 'Ijazah', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-10 12:09:54'),
('FP_607133500aeda', 'Surat Tugas', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-10 12:10:40'),
('FP_607408c43ee24', 'Surat Keterangan Kematian', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-12 15:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `rel_layanan`
--

CREATE TABLE `rel_layanan` (
  `id_layanan` varchar(16) NOT NULL,
  `desc_layanan` varchar(50) NOT NULL,
  `add_id` varchar(32) NOT NULL,
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rel_layanan`
--

INSERT INTO `rel_layanan` (`id_layanan`, `desc_layanan`, `add_id`, `add_time`) VALUES
('ln_60580e5518902', 'Surat Tidak Mampu', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 10:26:13'),
('ln_6058654ddb1fb', 'Akta Kelahiran', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 16:37:17'),
('ln_60588dc2ea78c', 'Pindah Alamat', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-03-22 19:29:54'),
('LN_606ad0feb7607', 'KTP Hilang', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-05 15:57:34'),
('LN_607132b9173e1', 'Surat Keterangan Domisili', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-04-10 12:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `rel_status`
--

CREATE TABLE `rel_status` (
  `id_status` int(3) NOT NULL,
  `desc_status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rel_status`
--

INSERT INTO `rel_status` (`id_status`, `desc_status`) VALUES
(1, 'Pengajuan Disetujui'),
(2, 'Ditolak oleh Kepala UKPD'),
(3, 'Menunggu Persetujuan Kepala UKPD'),
(4, 'Ditolak oleh Operator'),
(5, 'Menunggu Verifikasi Data oleh Operator');

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` tinytext NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomor_hp` varchar(30) DEFAULT NULL,
  `alamat` varchar(150) NOT NULL,
  `level` varchar(15) NOT NULL,
  `joined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`id`, `user_id`, `nik`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `email`, `nomor_hp`, `alamat`, `level`, `joined`) VALUES
(12, 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'Ade Fathudin', 'Ciamis', '1995-02-03', 'L', 'mail@a.com', '081317713432', 'Jl. Kampung Sawah no 3 Bekasi', '1', '2021-03-17 03:54:38'),
(21, 'c1e8a40a85b4137b8a27a1dcf3198168', '', 'Eva Pertiwi', 'CIAMIS', '2021-10-04', 'L', 'ade.fathudin@bsminsbroker.com', '0123', 'adad', '1', '2021-10-05 14:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `password` varchar(360) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `user_id`, `password`) VALUES
(13, 'e807f1fcf82d132f9bb018ca6738a19f', 'c4ca4238a0b923820dcc509a6f75849b'),
(23, 'c1e8a40a85b4137b8a27a1dcf3198168', '$2y$10$NwRTOHn2qDz/B2kxfTG7g.6Fm87aor7bmy/7DFjFXVjauBqXXTzcG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`notifikasi_id`);

--
-- Indexes for table `ref_fp`
--
ALTER TABLE `ref_fp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_fp_upload`
--
ALTER TABLE `ref_fp_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_pengajuan`
--
ALTER TABLE `ref_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `rel_fp`
--
ALTER TABLE `rel_fp`
  ADD PRIMARY KEY (`id_fp`);

--
-- Indexes for table `rel_layanan`
--
ALTER TABLE `rel_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `rel_status`
--
ALTER TABLE `rel_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `notifikasi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_fp`
--
ALTER TABLE `ref_fp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `ref_fp_upload`
--
ALTER TABLE `ref_fp_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `users_detail`
--
ALTER TABLE `users_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
