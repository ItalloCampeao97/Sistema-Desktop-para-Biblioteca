-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para bdbiblioteca
CREATE DATABASE IF NOT EXISTS `bdbiblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bdbiblioteca`;

-- Copiando estrutura para tabela bdbiblioteca.alunos
CREATE TABLE IF NOT EXISTS `alunos` (
  `ra` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ra`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bdbiblioteca.alunos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` (`ra`, `nome`, `curso`, `email`, `fone`) VALUES
	(1, 'Itallo Campeão', 'Jogos', 'itallocampeao@gmail.com', '33245677'),
	(2, 'Pedro Carrasco', 'Agronegócio', 'pedrocarrasco@gmail.com', '33244598'),
	(3, 'Vicente Moraes', 'Segurança', 'vicentemoraes@hotmail.com', '33267895'),
	(4, 'João Silva', 'ADS', 'joaosil@hotmail.com', '33267590'),
	(6, 'Kath Zaparoli', 'ADS', 'kathzapa@gmail.com', '33256789'),
	(8, 'Silvester Stallone', 'ADS', 'silvstal@hotmail.com', '33248484'),
	(9, 'Madonna Cantora', 'Segurança', 'madonna@gmail.com', '33258979'),
	(10, 'Godofredo', 'Jogos', 'godo@terra.br', '33289784');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;

-- Copiando estrutura para tabela bdbiblioteca.editoras
CREATE TABLE IF NOT EXISTS `editoras` (
  `id_editora` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bdbiblioteca.editoras: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` (`id_editora`, `nome`) VALUES
	(1, 'Atlas'),
	(2, 'Saraiva'),
	(3, 'Campus'),
	(4, 'Makron Books'),
	(6, 'Pearson Education'),
	(7, 'Brasiliense'),
	(8, 'Elsevier'),
	(9, 'Africana'),
	(10, 'Americana');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;

-- Copiando estrutura para tabela bdbiblioteca.emprestimos
CREATE TABLE IF NOT EXISTS `emprestimos` (
  `id_emp` int(10) NOT NULL AUTO_INCREMENT,
  `aluno` varchar(50) DEFAULT NULL,
  `livro` varchar(50) DEFAULT NULL,
  `data_emp` varchar(50) DEFAULT NULL,
  `data_dev` varchar(50) DEFAULT NULL,
  `dtdevolucaoefetuada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bdbiblioteca.emprestimos: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` (`id_emp`, `aluno`, `livro`, `data_emp`, `data_dev`, `dtdevolucaoefetuada`) VALUES
	(3, 'Pedro Carrasco', 'Sistemas de Informação', '01/11/2017 - 04:26h', '01/11/2017 - 04:26h', '10/11/2017 - 02:04h'),
	(4, 'Vicente Moraes', 'Fundamentos e Métodos', '01/11/2017 - 04:26h', '01/11/2017 - 04:26h', '10/11/2017 - 02:04h'),
	(5, 'João Silva', 'A Cabana', '01/11/2017 - 04:26h', '01/11/2017 - 04:26h', '10/11/2017 - 02:04h'),
	(26, 'Itallo Campeão', 'Engenharia de Software', '01/11/2017 - 04:26h', '01/11/2017 - 04:26h', '10/11/2017 - 02:04h'),
	(28, 'Itallo Campeão', 'Engenharia de Software', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 05:22h'),
	(29, 'Itallo Campeão', 'Sistemas de Informação', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 05:22h'),
	(30, 'Itallo Campeão', 'Fundamentos e Métodos', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 05:24h'),
	(31, 'Itallo Campeão', 'A Cabana', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 05:26h'),
	(32, 'Pedro Carrasco', 'A Travessia', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 04:29h'),
	(33, 'Pedro Carrasco', '90 Minutos no Paraíso', '01/11/2017 - 04:26h', '16/11/2017 - 04:26h', '10/11/2017 - 05:26h'),
	(36, 'Itallo Campeão', 'Fundamentos e Métodos', '07/11/2017 - 05:28h', '08/11/2017 - 05:28h', '10/11/2017 - 05:30h'),
	(37, 'Itallo Campeão', 'Engenharia de Software', '13/11/2017 - 00:00h', '02/11/2017 - 05:31h', '10/11/2017 - 05:32h'),
	(38, 'Itallo Campeão', 'Engenharia de Software', '08/11/2017 - 00:25h', '09/11/2017 - 00:25h', '13/11/2017 - 00:25h'),
	(39, 'Itallo Campeão', 'Engenharia de Software', '20/11/2017 - 18:22h', '24/11/2017 - 18:22h', '13/11/2017 - 18:23h'),
	(40, 'Madonna Cantora', 'Beijo do Vampiro', '20/11/2017 - 18:22h', '24/11/2017 - 18:22h', 'Não devolvido'),
	(41, 'Kath Zaparoli', 'Mil e Uma Noites', '22/11/2017 - 18:22h', '24/11/2017 - 18:22h', 'Não devolvido'),
	(42, 'Silvester Stallone', 'A Travessia', '03/12/2017 - 18:22h', '22/11/2017 - 18:22h', 'Não devolvido'),
	(43, 'Madonna Cantora', '90 Minutos no Paraíso', '21/11/2017 - 10:40h', '27/11/2017 - 10:40h', '20/11/2017 - 10:41h');
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;

-- Copiando estrutura para tabela bdbiblioteca.livros
CREATE TABLE IF NOT EXISTS `livros` (
  `isbn` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `editora` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bdbiblioteca.livros: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` (`isbn`, `titulo`, `editora`, `status`) VALUES
	(1, 'Engenharia de Software', 'Pearson Education', 'Disponível'),
	(2, 'Sistemas de Informação', 'Saraiva', 'Disponível'),
	(3, 'Fundamentos e Métodos', 'Campus', 'Disponível'),
	(9, 'A Cabana', 'Saraiva', 'Disponível'),
	(10, 'A Travessia', 'Atlas', 'Emprestado'),
	(11, '90 Minutos no Paraíso', 'Campus', 'Disponível'),
	(12, 'Casa Monstro', 'Makron Books', 'Emprestado'),
	(15, 'Mil e Uma Noites', 'Saraiva', 'Emprestado'),
	(16, 'Beijo do Vampiro', 'Africana', 'Emprestado'),
	(17, 'Comidas e Receitas', 'Pearson Education', 'Disponível'),
	(18, 'Sistemas Operacionais', 'Brasiliense', 'Disponível');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
