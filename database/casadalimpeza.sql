-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para casadalimpeza
CREATE DATABASE IF NOT EXISTS `casadalimpeza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `casadalimpeza`;

-- Copiando estrutura para tabela casadalimpeza.tb_ambiente
CREATE TABLE IF NOT EXISTS `tb_ambiente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_ambiente: ~0 rows (aproximadamente)
INSERT INTO `tb_ambiente` (`id`, `foto`, `nome`) VALUES
	(1, '0befe152c9d18063282998f7e7bbca61.jpg', 'Sala de Estar'),
	(2, '3ae8ca632853ee5bf53beea74017448e.jpg', 'Cozinha');

-- Copiando estrutura para tabela casadalimpeza.tb_ambiente_produto
CREATE TABLE IF NOT EXISTS `tb_ambiente_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ambiente` int NOT NULL DEFAULT '0',
  `id_produto` int NOT NULL DEFAULT '0',
  `uso_recomendado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ambiente` (`id_ambiente`),
  KEY `id_produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela casadalimpeza.tb_ambiente_produto: ~0 rows (aproximadamente)
INSERT INTO `tb_ambiente_produto` (`id`, `id_ambiente`, `id_produto`, `uso_recomendado`) VALUES
	(1, 1, 3, '2'),
	(2, 1, 1, '2'),
	(3, 2, 1, '2'),
	(4, 2, 2, '2');

-- Copiando estrutura para tabela casadalimpeza.tb_banner
CREATE TABLE IF NOT EXISTS `tb_banner` (
  `ban_id` int NOT NULL AUTO_INCREMENT,
  `ban_nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ban_titulo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ban_subtitulo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ban_link` text COLLATE utf8mb4_general_ci NOT NULL,
  `ban_posicao` int NOT NULL DEFAULT '0',
  `ban_ordem` text COLLATE utf8mb4_general_ci NOT NULL,
  `ban_arquivo` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ban_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_banner: ~0 rows (aproximadamente)
INSERT INTO `tb_banner` (`ban_id`, `ban_nome`, `ban_titulo`, `ban_subtitulo`, `ban_link`, `ban_posicao`, `ban_ordem`, `ban_arquivo`) VALUES
	(1, 'header', '', '', '#', 1, '1', '4e051560e998ff48d447f22318dd4880.png'),
	(2, 'content', '', '', '#', 2, '2', '9f31f9a09ae872d5f62a31a0444f265d.png'),
	(3, 'footer', '', '', '#', 3, '3', 'aaf0113265f78eaebda32a966fb41d53.png');

-- Copiando estrutura para tabela casadalimpeza.tb_categoria
CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `url_amigavel` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_categoria: ~1 rows (aproximadamente)
INSERT INTO `tb_categoria` (`id`, `foto`, `foto_banner`, `nome`, `url_amigavel`, `status`) VALUES
	(1, 'cf059e51e9c206634342027424a23c7f.jpg', 'f843dd661d4cfa3649449f586dbb84f0.jpg', 'Lustres de Cristal', 'lustres-de-cristal', 1),
	(2, '4e07668153000a012afd4d1c661116c2.jpg', 'f200785226a3df5844983c27d9c001a3.jpg', 'Lustres de Candelabro', 'lustres-de-candelabro', 1);

-- Copiando estrutura para tabela casadalimpeza.tb_empresa
CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `endereco` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `cidade` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `whatsapp` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `horario_de_atendimento` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `link_whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_empresa: ~0 rows (aproximadamente)
INSERT INTO `tb_empresa` (`id`, `nome`, `endereco`, `cidade`, `telefone`, `whatsapp`, `email`, `facebook`, `instagram`, `horario_de_atendimento`, `link_whatsapp`) VALUES
	(1, 'Shop Luz', 'Rua João Antonio de Freitas', 'Rebouças', '0', '42 998230141', 'lenonmartini21@gmail.com', '0', '0', '08:00 às 18:00', '0');

-- Copiando estrutura para tabela casadalimpeza.tb_log
CREATE TABLE IF NOT EXISTS `tb_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `log_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `log_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `log_usu_id` int NOT NULL DEFAULT '0',
  `log_ip` varchar(150) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `log_el` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `log_el_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `log_usu_id` (`log_usu_id`),
  KEY `log_el_id` (`log_el_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_log: ~14 rows (aproximadamente)
INSERT INTO `tb_log` (`id`, `log_type`, `log_link`, `log_usu_id`, `log_ip`, `log_el`, `log_el_id`) VALUES
	(1, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(2, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(3, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(4, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(5, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(6, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(7, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(8, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(9, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(10, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(11, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(12, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(13, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(14, 'ACCESS', '/wetransfer_site3_novo-fw-png_2024-06-17_1238/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(15, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(16, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(17, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(18, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(19, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(20, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(21, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(22, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(23, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(24, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(25, 'DELETE', '/adm/banners/excluir.php?id=1', 1, '127.0.0.1', 'BANNER', 1),
	(26, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(27, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(28, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(29, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(30, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(31, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(32, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(33, 'DELETE', '/adm/banners/excluir.php?id=2', 1, '127.0.0.1', 'BANNER', 2),
	(34, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(35, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(36, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(37, 'DELETE', '/adm/banners/excluir.php?id=3', 1, '127.0.0.1', 'BANNER', 3),
	(38, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(39, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(40, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(41, 'DELETE', '/adm/banners/excluir.php?id=4', 1, '127.0.0.1', 'BANNER', 4),
	(42, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(43, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(44, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(45, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(46, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(47, 'DELETE', '/adm/banners/excluir.php?id=5', 1, '127.0.0.1', 'BANNER', 5),
	(48, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(49, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(50, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(51, 'DELETE', '/adm/banners/excluir.php?id=6', 1, '127.0.0.1', 'BANNER', 6),
	(52, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(53, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(54, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(55, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(56, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(57, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(58, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(59, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(60, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(61, 'ACCESS', '/adm/banners/index.php', 1, '127.0.0.1', 'BANNER', 0),
	(62, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(63, 'ACCESS', '/adm/banners/novo.php', 1, '127.0.0.1', 'BANNER', 0),
	(64, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(65, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(66, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(67, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(68, 'ACCESS', '/adm/banners/editar.php?id=1', 1, '127.0.0.1', 'BANNER', 0),
	(69, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0),
	(70, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(71, 'ACCESS', '/adm/marcas/index.php', 1, '127.0.0.1', 'MARCA', 0),
	(72, 'ACCESS', '/adm/marcas/index.php', 1, '127.0.0.1', 'MARCA', 0),
	(73, 'ACCESS', '/adm/marcas/index.php', 1, '127.0.0.1', 'MARCA', 0),
	(74, 'ACCESS', '/adm/marcas/index.php', 1, '127.0.0.1', 'MARCA', 0),
	(75, 'ACCESS', '/adm/marcas/index.php', 1, '127.0.0.1', 'MARCA', 0),
	(76, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(77, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(78, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(79, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(80, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(81, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(82, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(83, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(84, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(85, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(86, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 1),
	(87, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 86),
	(88, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(89, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(90, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(91, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 1),
	(92, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 91),
	(93, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(94, 'UPDATE', '/adm/produtos/status.php?id=1&status=1', 1, '127.0.0.1', 'PRODUTO', 1),
	(95, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(96, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(97, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(98, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(99, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 1),
	(100, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 99),
	(101, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(102, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(103, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(104, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(105, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(106, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(107, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(108, 'UPDATE', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 1),
	(109, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(110, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(111, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(112, 'UPDATE', '/adm/produtos/status.php?id=1&status=1', 1, '127.0.0.1', 'PRODUTO', 1),
	(113, 'UPDATE', '/adm/produtos/status.php?id=1&status=0', 1, '127.0.0.1', 'PRODUTO', 1),
	(114, 'UPDATE', '/adm/produtos/status.php?id=1&status=1', 1, '127.0.0.1', 'PRODUTO', 1),
	(115, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(116, 'ACCESS', '/adm/produtos/', 2, '127.0.0.1', 'PRODUTO', 0),
	(117, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(118, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(119, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(120, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(121, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(122, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(123, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 2),
	(124, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 123),
	(125, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(126, 'UPDATE', '/adm/produtos/status.php?id=2&status=1', 1, '127.0.0.1', 'PRODUTO', 2),
	(127, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(128, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(129, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(130, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(131, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(132, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(133, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(134, 'ACCESS', '/adm/produtos/', 1, '::1', 'PRODUTO', 0),
	(135, 'ACCESS', '/adm/produtos/', 1, '::1', 'PRODUTO', 0),
	(136, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(137, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(138, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(139, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 3),
	(140, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 1),
	(141, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(142, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(143, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(144, 'ACCESS', '/adm/marcas/', 1, '127.0.0.1', 'MARCA', 0),
	(145, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(146, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(147, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(148, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(149, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(150, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(151, 'ACCESS', '/adm/categorias/', 1, '127.0.0.1', 'CATEGORIA', 0),
	(152, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(153, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(154, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(155, 'ACCESS', '/adm/categorias/index.php', 1, '127.0.0.1', 'CATEGORIA', 0),
	(156, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(157, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0),
	(158, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 1),
	(159, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 3),
	(160, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(161, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0),
	(162, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'PRODUTO', 2),
	(163, 'INSERT', '/adm/produtos/salvar.php', 1, '127.0.0.1', 'AMBIENTE', 4),
	(164, 'ACCESS', '/adm/produtos/index.php', 1, '127.0.0.1', 'PRODUTO', 0);

-- Copiando estrutura para tabela casadalimpeza.tb_marca
CREATE TABLE IF NOT EXISTS `tb_marca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` text COLLATE utf8mb4_general_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `url_amigavel` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_marca: ~0 rows (aproximadamente)
INSERT INTO `tb_marca` (`id`, `foto`, `nome`, `url_amigavel`, `status`) VALUES
	(1, '737485d9886437cce6cf7336325f47d7.jpg', 'Schonbek', 'schonbek', 1),
	(2, '546096fd97e18967433247d42aeb3354.jpg', 'Kichler Lighting', 'kichler-lighting', 1);

-- Copiando estrutura para tabela casadalimpeza.tb_produto
CREATE TABLE IF NOT EXISTS `tb_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `url_amigavel` text COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto1` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto2` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto3` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `preco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `desconto` decimal(10,2) NOT NULL DEFAULT '0.00',
  `alteracao` datetime DEFAULT NULL,
  `id_categoria` int NOT NULL DEFAULT '0',
  `id_marca` int NOT NULL DEFAULT '0',
  `id_tipo` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_marca` (`id_marca`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_produto: ~1 rows (aproximadamente)
INSERT INTO `tb_produto` (`id`, `nome`, `url_amigavel`, `descricao`, `foto1`, `foto2`, `foto3`, `status`, `preco`, `desconto`, `alteracao`, `id_categoria`, `id_marca`, `id_tipo`) VALUES
	(1, 'Lustres de Cristal', 'lustres-de-cristal', '<p>Luste de crista 1</p>\r\n', 'lustres-de-cristal-429f43b46abc69609dae886e56488ebf.jpg', 'lustres-de-cristal-a8ce9d0fe970024b4dd4f03787d5aa7c.jpg', 'lustres-de-cristal-ea5ad339ffe7039ed39917c11318bdea.jpg', 1, 500.00, 0.05, NULL, 1, 1, 1),
	(2, 'Lustres de Candelabro', 'lustres-de-candelabro', '<p>Lustres de Candelabro teste</p>\r\n', 'lustres-de-candelabro-f68398bd21a38c3c7defbca4781cfbba.jpg', 'lustres-de-candelabro-b594657f5a69a4141251aee5228a3f92.jpg', 'lustres-de-candelabro-b65ecaeea3ec879d3103ad1378c187a9.jpg', 1, 1000.00, 0.02, NULL, 2, 1, 1);

-- Copiando estrutura para tabela casadalimpeza.tb_tipo
CREATE TABLE IF NOT EXISTS `tb_tipo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_tipo: ~0 rows (aproximadamente)
INSERT INTO `tb_tipo` (`id`, `nome`) VALUES
	(1, 'Lustres'),
	(2, 'Plafon'),
	(3, 'Pendente'),
	(4, 'Abajur'),
	(5, 'Arandela'),
	(6, 'Led'),
	(7, 'Spot');

-- Copiando estrutura para tabela casadalimpeza.tb_usuario
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `usu_login` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `usu_senha` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `usu_status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_usuario: ~1 rows (aproximadamente)
INSERT INTO `tb_usuario` (`usu_id`, `usu_nome`, `usu_login`, `usu_senha`, `usu_status`) VALUES
	(1, 'suporte', 'suporte', '531225954e151ba16ea61fae23a7b750696210f3', 1),
	(2, 'teste', 'teste', '0349f0db43627113c4f3011d9c20f3576979ff24', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
