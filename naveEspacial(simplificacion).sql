CREATE DATABASE IF NOT EXISTS `nave_espacial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nave_espacial`;

CREATE TABLE `candidatos` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `profesion` varchar(60) DEFAULT NULL,
  `edad` tinyint(4) DEFAULT NULL CHECK (`edad` >= 25 and `edad` <= 50),
  `anio_nacimiento` smallint(6) DEFAULT NULL,
  `fisico` tinyint(4) DEFAULT NULL,
  `convivencia` tinyint(4) DEFAULT NULL,
  `experiencia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`dni`);

CREATE TABLE `habilidades` (
  `idhabilidad` tinyint(4) NOT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `habilidad` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`idhabilidad`),
  ADD KEY `FK_DNI_candidatos` (`dni`);

ALTER TABLE `habilidades`
  MODIFY `idhabilidad` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `habilidades`
  ADD CONSTRAINT `FK_DNI_candidatos` FOREIGN KEY (`dni`) REFERENCES `candidatos` (`dni`) ON DELETE CASCADE;
COMMIT;

INSERT INTO `candidatos` (`dni`, `nombre`, `profesion`, `edad`, `anio_nacimiento`, `fisico`, `convivencia`, `experiencia`) VALUES
('19889754O', 'Eva', 'Piloto profesional', 38, 1988, 8, 7, 15),
('65692823G', 'Pablo', 'Mecanico industrial', 41, 1985, 7, 4, 19),
('65785327R', 'Alex', 'Medico', 32, 1994, 8, 7, 8),
('68563942I', 'Noa', 'Tecnica de emergencias', 26, 2000, 9, 8, 5),
('76136983U', 'Dani', 'Cocinero', 35, 1991, 8, 10, 14),
('79659698M', 'Sara', 'Ingeniera aeroespacial', 29, 1997, 9, 5, 5),
('86953663T', 'Hugo', 'Informatico', 27, 1999, 7, 6, 6),
('89692975T', 'Leo', 'Creador de contenido', 25, 2001, 10, 9, 4),
('96915812Q', 'Lucia', 'Biologa', 31, 1995, 8, 8, 7),
('96956198P', 'Marta', 'Ingeniera agronoma', 46, 1980, 6, 9, 21);

INSERT INTO `habilidades` (`idhabilidad`, `dni`, `habilidad`) VALUES
(1, '65785327R', 'Cirugia'),
(2, '65785327R', 'Medicina de urgencias'),
(3, '79659698M', 'Sistemas electronicos'),
(4, '79659698M', 'Programacion'),
(5, '89692975T', 'Comunicaciones'),
(6, '96956198P', 'Botanica'),
(7, '76136983U', 'Nutricion'),
(8, '19889754O', 'Primeros auxilios'),
(9, '86953663T', 'Programacion'),
(10, '86953663T', 'Ciberseguridad'),
(11, '96915812Q', 'Microbiologia'),
(12, '96915812Q', 'Cultivos'),
(13, '65692823G', 'Mecanica'),
(14, '65692823G', 'Electricidad'),
(15, '68563942I', 'Gestion de crisis');