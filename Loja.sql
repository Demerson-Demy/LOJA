-- --------------------------------------------------------
-- Servidor:                     
-- Versão do servidor:           5.7.29-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela loja.tb_cadastro: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_cadastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cadastro` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_categoria: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` (`id_categoria`, `cat_categoria`, `cat_tipo`) VALUES
	(1, 'Roupas', 'Calça'),
	(2, 'Acessorios', 'Boné');
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_funcionario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_itemvenda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_itemvenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_itemvenda` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_marca: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_marca` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_produto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_publico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_publico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_publico` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_tamanho: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_tamanho` DISABLE KEYS */;
INSERT INTO `tb_tamanho` (`tm_tamanho`) VALUES
	('10'),
	('12'),
	('14'),
	('16'),
	('38'),
	('40'),
	('42'),
	('6'),
	('8'),
	('G'),
	('GG'),
	('M'),
	('P'),
	('XL'),
	('XXL');
/*!40000 ALTER TABLE `tb_tamanho` ENABLE KEYS */;

-- Copiando dados para a tabela loja.tb_venda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_venda` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
