-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 04/02/2025 às 11:59
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `SampleDISC_BD`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CUSTOMERS`
--

CREATE TABLE `TB_CUSTOMERS` (
  `id` int NOT NULL,
  `customerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contactLastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contactFirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postalCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `salesRepEmmployeeNumber` int NOT NULL,
  `creditLimit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_CUSTOMERS`
--

INSERT INTO `TB_CUSTOMERS` (`id`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmmployeeNumber`, `creditLimit`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_EMPLOYEES`
--

CREATE TABLE `TB_EMPLOYEES` (
  `id` int NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `extension` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `officeCode` int NOT NULL,
  `reportsTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jobTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_EMPLOYEES`
--

INSERT INTO `TB_EMPLOYEES` (`id`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(2, NULL, NULL, NULL, NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_OFFICES`
--

CREATE TABLE `TB_OFFICES` (
  `id` int NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adressLine2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postalCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `territory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_OFFICES`
--

INSERT INTO `TB_OFFICES` (`id`, `city`, `phone`, `addressLine1`, `adressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ORDERS`
--

CREATE TABLE `TB_ORDERS` (
  `id` int NOT NULL,
  `orderDate` date DEFAULT NULL,
  `requiredDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `customerNumber` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_ORDERS`
--

INSERT INTO `TB_ORDERS` (`id`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ORDER_DETAILS`
--

CREATE TABLE `TB_ORDER_DETAILS` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantityOrdered` int DEFAULT NULL,
  `priceEach` double DEFAULT NULL,
  `orderLineNumber` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAYMENTS`
--

CREATE TABLE `TB_PAYMENTS` (
  `customerNumber` int NOT NULL,
  `id` int NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUCTLINES`
--

CREATE TABLE `TB_PRODUCTLINES` (
  `id` int NOT NULL,
  `textDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `htmlDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUCTLINES`
--

INSERT INTO `TB_PRODUCTLINES` (`id`, `textDescription`, `htmlDescription`, `image`) VALUES
(99, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUCTS`
--

CREATE TABLE `TB_PRODUCTS` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `line_id` int NOT NULL,
  `scale` double DEFAULT NULL,
  `vendor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantityInStock` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `msrp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUCTS`
--

INSERT INTO `TB_PRODUCTS` (`id`, `name`, `line_id`, `scale`, `vendor`, `description`, `quantityInStock`, `price`, `msrp`) VALUES
(1, 'Arroz branco', 99, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CUSTOMERS`
--
ALTER TABLE `TB_CUSTOMERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee_number` (`salesRepEmmployeeNumber`);

--
-- Índices de tabela `TB_EMPLOYEES`
--
ALTER TABLE `TB_EMPLOYEES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_office_code` (`officeCode`);

--
-- Índices de tabela `TB_OFFICES`
--
ALTER TABLE `TB_OFFICES`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_ORDERS`
--
ALTER TABLE `TB_ORDERS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_number` (`customerNumber`);

--
-- Índices de tabela `TB_ORDER_DETAILS`
--
ALTER TABLE `TB_ORDER_DETAILS`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Índices de tabela `TB_PAYMENTS`
--
ALTER TABLE `TB_PAYMENTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_cust_number` (`customerNumber`);

--
-- Índices de tabela `TB_PRODUCTLINES`
--
ALTER TABLE `TB_PRODUCTLINES`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_PRODUCTS`
--
ALTER TABLE `TB_PRODUCTS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productline` (`line_id`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_CUSTOMERS`
--
ALTER TABLE `TB_CUSTOMERS`
  ADD CONSTRAINT `fk_employee_number` FOREIGN KEY (`salesRepEmmployeeNumber`) REFERENCES `TB_EMPLOYEES` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Restrições para tabelas `TB_EMPLOYEES`
--
ALTER TABLE `TB_EMPLOYEES`
  ADD CONSTRAINT `fk_office_code` FOREIGN KEY (`officeCode`) REFERENCES `TB_OFFICES` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Restrições para tabelas `TB_ORDERS`
--
ALTER TABLE `TB_ORDERS`
  ADD CONSTRAINT `fk_customer_number` FOREIGN KEY (`customerNumber`) REFERENCES `TB_CUSTOMERS` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Restrições para tabelas `TB_ORDER_DETAILS`
--
ALTER TABLE `TB_ORDER_DETAILS`
  ADD CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `TB_ORDERS` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `TB_PRODUCTS` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Restrições para tabelas `TB_PAYMENTS`
--
ALTER TABLE `TB_PAYMENTS`
  ADD CONSTRAINT `fk_payment_cust_number` FOREIGN KEY (`customerNumber`) REFERENCES `TB_CUSTOMERS` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Restrições para tabelas `TB_PRODUCTS`
--
ALTER TABLE `TB_PRODUCTS`
  ADD CONSTRAINT `fk_productline` FOREIGN KEY (`line_id`) REFERENCES `TB_PRODUCTLINES` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
