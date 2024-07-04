-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.28-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
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
CREATE DATABASE IF NOT EXISTS `casadalimpeza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `casadalimpeza`;

-- Copiando estrutura para tabela casadalimpeza.tb_ambiente
CREATE TABLE IF NOT EXISTS `tb_ambiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL DEFAULT '0',
  `nome` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_ambiente: ~2 rows (aproximadamente)
INSERT INTO `tb_ambiente` (`id`, `foto`, `nome`) VALUES
	(1, '0befe152c9d18063282998f7e7bbca61.jpg', 'Sala de Estar'),
	(2, '3ae8ca632853ee5bf53beea74017448e.jpg', 'Cozinha');

-- Copiando estrutura para tabela casadalimpeza.tb_ambiente_produto
CREATE TABLE IF NOT EXISTS `tb_ambiente_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ambiente` int(11) NOT NULL DEFAULT 0,
  `id_produto` int(11) NOT NULL DEFAULT 0,
  `uso_recomendado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ambiente` (`id_ambiente`),
  KEY `id_produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_ambiente_produto: ~4 rows (aproximadamente)
INSERT INTO `tb_ambiente_produto` (`id`, `id_ambiente`, `id_produto`, `uso_recomendado`) VALUES
	(1, 1, 3, '2'),
	(2, 1, 1, '2'),
	(3, 2, 1, '2'),
	(4, 2, 2, '2');

-- Copiando estrutura para tabela casadalimpeza.tb_banner
CREATE TABLE IF NOT EXISTS `tb_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_nome` varchar(255) NOT NULL DEFAULT '0',
  `ban_titulo` varchar(255) NOT NULL DEFAULT '0',
  `ban_subtitulo` varchar(50) NOT NULL DEFAULT '0',
  `ban_link` text NOT NULL,
  `ban_posicao` int(11) NOT NULL DEFAULT 0,
  `ban_ordem` text NOT NULL,
  `ban_arquivo` text NOT NULL,
  PRIMARY KEY (`ban_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_banner: ~3 rows (aproximadamente)
INSERT INTO `tb_banner` (`ban_id`, `ban_nome`, `ban_titulo`, `ban_subtitulo`, `ban_link`, `ban_posicao`, `ban_ordem`, `ban_arquivo`) VALUES
	(1, 'header', '', '', '#', 1, '1', '4e051560e998ff48d447f22318dd4880.png'),
	(2, 'content', '', '', '#', 2, '2', '9f31f9a09ae872d5f62a31a0444f265d.png'),
	(3, 'footer', '', '', '#', 3, '3', 'aaf0113265f78eaebda32a966fb41d53.png');

-- Copiando estrutura para tabela casadalimpeza.tb_categoria
CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` text NOT NULL,
  `foto_banner` text NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `url_amigavel` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_categoria: ~2 rows (aproximadamente)
INSERT INTO `tb_categoria` (`id`, `foto`, `foto_banner`, `nome`, `url_amigavel`, `status`) VALUES
	(1, 'cf059e51e9c206634342027424a23c7f.jpg', 'f843dd661d4cfa3649449f586dbb84f0.jpg', 'Lustres de Cristal', 'lustres-de-cristal', 1),
	(2, '4e07668153000a012afd4d1c661116c2.jpg', 'f200785226a3df5844983c27d9c001a3.jpg', 'Lustres de Candelabro', 'lustres-de-candelabro', 1);

-- Copiando estrutura para tabela casadalimpeza.tb_empresa
CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  `endereco` varchar(255) NOT NULL DEFAULT '0',
  `cidade` varchar(255) NOT NULL DEFAULT '0',
  `telefone` varchar(255) DEFAULT '0',
  `whatsapp` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `facebook` varchar(255) DEFAULT '0',
  `instagram` varchar(255) DEFAULT '0',
  `horario_de_atendimento` varchar(255) NOT NULL DEFAULT '0',
  `link_whatsapp` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_empresa: ~1 rows (aproximadamente)
INSERT INTO `tb_empresa` (`id`, `nome`, `endereco`, `cidade`, `telefone`, `whatsapp`, `email`, `facebook`, `instagram`, `horario_de_atendimento`, `link_whatsapp`) VALUES
	(1, 'Shop Luz', 'Rua João Antonio de Freitas', 'Rebouças', '0', '42 998230141', 'lenonmartini21@gmail.com', 'https://www.facebook.com/lenon.martini', 'https://www.instagram.com/lenonmartini/', '08:00 às 18:00', 'https://wa.me/5542998230141');

-- Copiando estrutura para tabela casadalimpeza.tb_log
CREATE TABLE IF NOT EXISTS `tb_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(255) NOT NULL DEFAULT '0',
  `log_link` varchar(255) NOT NULL DEFAULT '0',
  `log_usu_id` int(11) NOT NULL DEFAULT 0,
  `log_ip` varchar(100) NOT NULL DEFAULT '0',
  `log_el` varchar(100) NOT NULL DEFAULT '0',
  `log_el_id` int(11) NOT NULL DEFAULT 0,
  `log_data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_log: ~11 rows (aproximadamente)
INSERT INTO `tb_log` (`id`, `log_type`, `log_link`, `log_usu_id`, `log_ip`, `log_el`, `log_el_id`, `log_data`) VALUES
	(1, 'error', '0', 0, '0', '0', 0, 'Error description'),
	(2, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0, ''),
	(3, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0, ''),
	(4, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, ''),
	(5, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, ''),
	(6, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, ''),
	(7, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0, ''),
	(8, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0, ''),
	(9, 'ACCESS', '/adm/banners/', 1, '127.0.0.1', 'BANNER', 0, ''),
	(10, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, ''),
	(11, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, ''),
	(12, 'ACCESS', '/adm/produtos/', 1, '127.0.0.1', 'PRODUTO', 0, '');

-- Copiando estrutura para tabela casadalimpeza.tb_marca
CREATE TABLE IF NOT EXISTS `tb_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` text NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `url_amigavel` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_marca: ~2 rows (aproximadamente)
INSERT INTO `tb_marca` (`id`, `foto`, `nome`, `url_amigavel`, `status`) VALUES
	(1, '737485d9886437cce6cf7336325f47d7.jpg', 'Schonbek', 'schonbek', 1),
	(2, '546096fd97e18967433247d42aeb3354.jpg', 'Kichler Lighting', 'kichler-lighting', 1);

-- Copiando estrutura para tabela casadalimpeza.tb_produto
CREATE TABLE IF NOT EXISTS `tb_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  `url_amigavel` text NOT NULL,
  `descricao` text NOT NULL,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `foto3` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `preco` decimal(10,2) NOT NULL DEFAULT 0.00,
  `desconto` decimal(10,2) NOT NULL DEFAULT 0.00,
  `alteracao` datetime DEFAULT NULL,
  `id_categoria` int(11) NOT NULL DEFAULT 0,
  `id_marca` int(11) NOT NULL DEFAULT 0,
  `id_tipo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_marca` (`id_marca`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_produto: ~2 rows (aproximadamente)
INSERT INTO `tb_produto` (`id`, `nome`, `url_amigavel`, `descricao`, `foto1`, `foto2`, `foto3`, `status`, `preco`, `desconto`, `alteracao`, `id_categoria`, `id_marca`, `id_tipo`) VALUES
	(1, 'Lustres de Cristal', 'lustres-de-cristal', '<p>Luste de crista 1</p>\r\n', 'lustres-de-cristal-429f43b46abc69609dae886e56488ebf.jpg', 'lustres-de-cristal-a8ce9d0fe970024b4dd4f03787d5aa7c.jpg', 'lustres-de-cristal-ea5ad339ffe7039ed39917c11318bdea.jpg', 1, 500.00, 0.05, NULL, 1, 1, 1),
	(2, 'Lustres de Candelabro', 'lustres-de-candelabro', '<p>Lustres de Candelabro teste</p>\r\n', 'lustres-de-candelabro-f68398bd21a38c3c7defbca4781cfbba.jpg', 'lustres-de-candelabro-b594657f5a69a4141251aee5228a3f92.jpg', 'lustres-de-candelabro-b65ecaeea3ec879d3103ad1378c187a9.jpg', 1, 1000.00, 0.02, NULL, 2, 1, 1);

-- Copiando estrutura para tabela casadalimpeza.tb_tipo
CREATE TABLE IF NOT EXISTS `tb_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela casadalimpeza.tb_tipo: ~7 rows (aproximadamente)
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
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(55) NOT NULL,
  `usu_login` varchar(65) NOT NULL,
  `usu_senha` varchar(100) NOT NULL,
  `usu_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela casadalimpeza.tb_usuario: ~2 rows (aproximadamente)
INSERT INTO `tb_usuario` (`usu_id`, `usu_nome`, `usu_login`, `usu_senha`, `usu_status`) VALUES
	(1, 'suporte', 'suporte', '531225954e151ba16ea61fae23a7b750696210f3', 1),
	(2, 'teste', 'teste', '0349f0db43627113c4f3011d9c20f3576979ff24', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
