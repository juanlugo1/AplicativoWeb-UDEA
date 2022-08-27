-- empresa.enterprise definition

CREATE TABLE `enterprise` (
  `id_enterprise` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `document` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `createAT` date DEFAULT NULL,
  `updateAT` date DEFAULT NULL,
  PRIMARY KEY (`id_enterprise`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `document` (`document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- empresa.profile definition

CREATE TABLE `profile` (
  `id_profile` int NOT NULL,
  `image` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `createAT` date DEFAULT NULL,
  `updateAT` date DEFAULT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- empresa.employee definition

CREATE TABLE `employee` (
  `id_employee` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` enum('Admin','Operario') DEFAULT NULL,
  `id_enterprise` int NOT NULL,
  `createAT` date DEFAULT NULL,
  `updateAT` date DEFAULT NULL,
  PRIMARY KEY (`id_employee`),
  UNIQUE KEY `email` (`email`),
  KEY `employee_enterprise_id_enterprise_fk` (`id_enterprise`),
  CONSTRAINT `employee_enterprise_id_enterprise_fk` FOREIGN KEY (`id_enterprise`) REFERENCES `enterprise` (`id_enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- empresa.`transaction` definition

CREATE TABLE `transaction` (
  `id_transaction` int NOT NULL,
  `concept` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `id_employee` int NOT NULL,
  `id_enterprise` int NOT NULL,
  `createAT` date DEFAULT NULL,
  `updateAT` date DEFAULT NULL,
  PRIMARY KEY (`id_transaction`),
  UNIQUE KEY `concept` (`concept`),
  KEY `transaction_employee_id_employee_fk` (`id_employee`),
  KEY `transaction_enterprise_id_enterprise_fk` (`id_enterprise`),
  CONSTRAINT `transaction_employee_id_employee_fk` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_employee`),
  CONSTRAINT `transaction_enterprise_id_enterprise_fk` FOREIGN KEY (`id_enterprise`) REFERENCES `enterprise` (`id_enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;