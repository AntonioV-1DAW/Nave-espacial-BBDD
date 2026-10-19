CREATE DATABASE nav_espacial;
CREATE TABLE candidatos(
    idcandidatos tinyint AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(40),
    dni varchar(9),
    profesion varchar(60),
    edad tinyint,
    anio_nacimiento smallint,
    fisico tinyint,
    convivencia tinyint,
    experiencia tinyint
);
CREATE TABLE habilidades(
    idcandidatos tinyint,
    idhabilidad tinyint AUTO_INCREMENT PRIMARY KEY,
    habilidad varchar(40) NULL,
    FOREIGN KEY (idcandidatos) REFERENCES candidatos(idcandidatos) ON DELETE CASCADE
);

INSERT INTO `candidatos` (`idcandidatos`, `nombre`, `dni`, `profesion`, `edad`, `anio_nacimiento`, `fisico`, `convivencia`, `experiencia`) VALUES
(1, 'Alex', '65785327R', 'Médico', 32, 1994, 8, 7, 8),
(6, 'Sara', '79659698M', 'Ingeniera aeroespacial', 29, 1997, 9, 5, 5),
(7, 'Leo', '89692975T', 'Creador de contenido', 24, 2002, 10, 9, 4),
(8, 'Marta', '96956198P', 'Ingeniera agrónoma', 46, 1980, 6, 9, 21),
(9, 'Dani', '76136983U', 'Cocinero', 35, 1991, 8, 10, 14),
(10, 'Eva', '19889754O', 'Piloto profesional', 38, 1988, 8, 7, 15),
(11, 'Hugo', '86953663T', 'Informático', 27, 1999 7, 6, 6),
(12, 'Lucía', '96915812Q', 'Bióloga', 31, 1995, 8, 8, 7),
(13, 'Pablo', '65692823G', 'Mecánico industrial', 41, 1985, 7, 4, 19),
(14, 'Noa', '68563942I', 'Técnica de emergencias', 26, 2000 9, 8, 5);

INSERT INTO `habilidades` (`idHabilidad`, `idCandidato`, `Habilidad`) VALUES
(1, 1, 'Cirugía'),
(2, 1, 'Medicina de urgencias'),
(3, 6, 'Sistemas electrónicos'),
(4, 6, 'Programación'),
(5, 7, 'Comunicaciones'),
(6, 8, 'Botánica'),
(7, 9, 'Nutrición'),
(8, 10, 'Primeros auxilios'),
(9, 11, 'Programación'),
(10, 11, 'Ciberseguridad'),
(11, 12, 'Microbiología'),
(12, 12, 'Cultivos'),
(13, 13, 'Mecánica'),
(14, 13, 'Electricidad'),
(15, 14, 'Gestión de crisis');