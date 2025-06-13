CREATE TABLE
    IF NOT EXISTS zona (
        codigo_zona INT AUTO_INCREMENT,
        nombre_zona VARCHAR(255) NOT NULL,
        PRIMARY KEY (codigo_zona)
    );

CREATE TABLE
    IF NOT EXISTS barrio (
        codigo_barrio INT AUTO_INCREMENT,
        nombre_barrio VARCHAR(255) NOT NULL,
        codigo_zona INT NOT NULL,
        PRIMARY KEY (codigo_barrio),
        FOREIGN KEY (codigo_zona) REFERENCES zona (codigo_zona)
    );

CREATE TABLE
    IF NOT EXISTS calle (
        codigo_calle INT AUTO_INCREMENT,
        nombre_calle VARCHAR(255) NOT NULL,
        codigo_zona INT NOT NULL,
        codigo_barrio INT NOT NULL,
        PRIMARY KEY (codigo_calle),
        FOREIGN KEY (codigo_zona) REFERENCES zona (codigo_zona),
        FOREIGN KEY (codigo_barrio) REFERENCES barrio (codigo_barrio)
    );