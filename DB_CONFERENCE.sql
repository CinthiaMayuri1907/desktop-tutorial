/*Crear base de datos dbConferenceVG*/
CREATE DATABASE dbConferenceVG;
USE  dbConferenceVG;

/*Crear tabla participante*/
CREATE TABLE PARTICIPANTE
(
IDPAR INT AUTO_INCREMENT,
FECREGPAR DATE,
NOMPAR VARCHAR(60),
APEPAR VARCHAR(80),
DNIPAR CHAR (8),
TIPPAR CHAR(1), 
CELPAR CHAR(9),
EMAPAR VARCHAR(90),
DIRPAR VARCHAR(90),
ESTPAR CHAR(1),
CONSTRAINT IDPAR_PK FOREIGN KEY (IDPAR)
);
/*Crear tabla Ponente*/
CREATE TABLE PONENTE
(
CODPON CHAR(5),
NOMPON VARCHAR(60),
APEPON VARCHAR(80),
CELPON CHAR(9),
DNIPON CHAR(1),
EMAPON VARCHAR(90),
DIRPON VARCHAR(90),
CONSTRAINT CODPON FOREIGN KEY (CODPON)
);
/*Crear tabla conferencia*/
CREATE TABLE CONFERENCIA
(
CODCONF CHAR(5),
TEMCONF VARCHAR(90),
FECCONF DATE,
PONCONF CHAR (5),
CONSTRAINT CODCONF FOREIGN KEY (CODCONF)
);

/*Crear tabla registro*/
CREATE TABLE REGISTRO
(
CODREG CHAR(5),
CODPAR INT,
FECREG DATE,
CERTREG CHAR(1),
CONSTRAINT CODREG_PK FOREIGN KEY (CODREG)
);

/*Crear tabla registrode de detalle*/
CREATE TABLE REGISTRO_DETALLE
(
IDREGDET INT AUTO_INCREMENT,
CODREG CHAR(5),
CODCONF CHAR(5),
CANTPART INT,
CONSTRAINT IDREGDET FOREIGN KEY (CODREG)
);
 
/*Relacion de tabla participante - registro*/
ALTER TABLE PARTICIPANTE
      ADD CONSTRAINT AUTO_INCREMENT REGISTRO
/*Relacion de tabla ponente-conferencia*/
ALTER TABLE PONENTE
      ADD
/*Relacion de tabla registro-resgistro_detalle*/
ALTER TABLE REGISTRO
      ADD
/*Relacion de tabla conferencia-registro_detalle*/
ALTER TABLE CONFERENCIA
      ADD
      
/*Insertar*/
INSERT INTO PARTICIPANTE
(NOMPAR,APEPAR,DNIPAR,TIPPAR,CELPAR,EMAPAR,DIRPAR,ESTPAR)
VALUES
('Juan','Campos Perez','40255133','1','986512478','juan.campos@vallegrande.edu.pe','AV.MIRAFLORES','A')
('Sofia','Solano Avila','64978531','1','974815258','sofia.solano@vallegrande.edu.pe','JR.HUALLAGA','A')
('Maria','Rosales Guerra','40255133','1','986512478','maria.rosales@vallegrande.edu.pe','CALLE GIRASOLES','A')
('Marcos','Alarcon Hermosa','40255133','2','986512478','marcos.alarcon@vallegrande.edu.pe','JR.UNION','A')
('Martin','Saman Arata','40255133','2','986512478','martin.saman@vallegrande.edu.pe','CALLE ABANCAY','A')
('Jose ','Quispe Luyo','40255133','2','986512478','jose.quispe@vallegrande.edu.pe','AV.MIRAFLORES','A')
('Claudia','Barraza Carrasco','40255133','3','986512478','claudia.barraza@vallegrande.edu.pe','AV.MIRAFLORES','A')
('Jhoana','Bendezu Anccasi','40255133','3','986512478','jhoana.bendezu@vallegrande.edu.pe','AV.MIRAFLORES','A')
('Mario','Acosta Palomino','40255133','3','986512478','mario.acosta@vallegrande.edu.pe','AV.MIRAFLORES','A')
INSERT INTO PONENTE
(CODPON,NOMPON,APEPON,CELPON,DNIPON,EMAPON,DIRPON)
VALUES
()

INSERT INTO CONFERENCIA

 
(


      

      