-- ZONAS PRINCIPALES DE LA PAZ
INSERT INTO zona (nombre_zona) VALUES ('Centro');
INSERT INTO zona (nombre_zona) VALUES ('Sopocachi');
INSERT INTO zona (nombre_zona) VALUES ('Miraflores');
INSERT INTO zona (nombre_zona) VALUES ('Obrajes');
INSERT INTO zona (nombre_zona) VALUES ('Zona Sur');
INSERT INTO zona (nombre_zona) VALUES ('Cotahuma');
INSERT INTO zona (nombre_zona) VALUES ('Max Paredes');
INSERT INTO zona (nombre_zona) VALUES ('Periférica');

-- BARRIOS PARA ZONA: Centro (codigo_zona = 1)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Casco Viejo', 1);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('San Pedro', 1);

-- BARRIOS PARA ZONA: Sopocachi (codigo_zona = 2)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Sopocachi', 2);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('San Jorge', 2);

-- BARRIOS PARA ZONA: Miraflores (codigo_zona = 3)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Miraflores', 3);

-- BARRIOS PARA ZONA: Obrajes (codigo_zona = 4)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Obrajes', 4);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Alto Obrajes', 4);

-- BARRIOS PARA ZONA: Zona Sur (codigo_zona = 5)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Calacoto', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('San Miguel', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Achumani', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Irpavi', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Mallasa', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Següencoma', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Bella Vista', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Cota Cota', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Chasquipampa', 5);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Ovejuyo', 5);

-- BARRIOS PARA ZONA: Cotahuma (codigo_zona = 6)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Llojeta', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Pasankeri', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Tembladerani', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Alpacoma', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Belén', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Tacagua', 6);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Cotahuma Central', 6);

-- BARRIOS PARA ZONA: Max Paredes (codigo_zona = 7)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Munaypata', 7);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Pura Pura', 7);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('El Tejar', 7);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Villa Victoria', 7);

-- BARRIOS PARA ZONA: Periférica (codigo_zona = 8)
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Villa Fátima', 8);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Achachicala', 8);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Pampahasi', 8);
INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES ('Villa Copacabana', 8);

-- CALLES PARA ZONA: Centro (codigo_zona = 1)
-- BARRIO: Casco Viejo (codigo_barrio = 1)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Jaén', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle de las Brujas', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Linares', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('El Prado (Av. 16 de Julio)', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Mariscal', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Pichincha', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Sagarnaga', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Murillo', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Iglesia de San Francisco', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Mercado Lanza', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Mayor de los Héroes', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Museo Nacional de Arte', 1, 1);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Catedral de Nuestra Señora de la Paz', 1, 1);

-- BARRIO: San Pedro (codigo_barrio = 2)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Penal de San Pedro', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza San Francisco', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Camacho', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Montes', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Mariscal Santa Cruz', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Libertador Simón Bolívar', 1, 2);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Abaroa', 1, 2);

-- CALLES PARA ZONA: Sopocachi (codigo_zona = 2)
-- BARRIO: Sopocachi (codigo_barrio = 3)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Eduardo Avaroa', 2, 3);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Parque Montículo', 2, 3);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida 20 de Octubre', 2, 3);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Belisario Salinas', 2, 3);

-- BARRIO: San Jorge (codigo_barrio = 4)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Puente de las Américas', 2, 4);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Puentes Trillizos', 2, 4);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estación San Jorge / Jalsuri (Teleférico)', 2, 4);

-- CALLES PARA ZONA: Miraflores (codigo_zona = 3)
-- BARRIO: Miraflores (codigo_barrio = 5)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Jardín Botánico', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Busch', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Villarroel', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estadio Hernando Siles', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Arqueológica (Pdte. Tejada Sorzano)', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Pequeño Big Ben (Plaza Uyuni)', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida del Ejército', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Villalobos', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Simón Bolívar', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Tejada Sorzano', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Puerto Rico', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Saavedra', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Parque Mirador Laikakota', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Triangular (Plaza San Martín)', 3, 5);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estación Busch (Teleférico)', 3, 5);

-- CALLES PARA ZONA: Obrajes (codigo_zona = 4)
-- BARRIO: Obrajes (codigo_barrio = 6)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Hernando Siles', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida 14 de Septiembre', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Héctor Ormachea', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza 16 de Julio (Obrajes)', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Roma', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Universidad Católica Boliviana "San Pablo"', 4, 6);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estación Obrajes 17 / Aynacha Obrajes (Teleférico)', 4, 6);

-- BARRIO: Alto Obrajes (codigo_barrio = 7)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Los Leones', 4, 7);

-- CALLES PARA ZONA: Zona Sur (codigo_zona = 5)
-- BARRIO: Calacoto (codigo_barrio = 8)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle 9 de Calacoto', 5, 8);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle 21 de Calacoto', 5, 8);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Ballivián', 5, 8);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Costanera', 5, 8);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Iglesia de San Miguel (Calacoto)', 5, 8);

-- BARRIO: San Miguel (codigo_barrio = 9)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Ballivián (San Miguel)', 5, 9);

-- BARRIO: Achumani (codigo_barrio = 10)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle 31 Achumani', 5, 10);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza de la Paz Mundial', 5, 10);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Puente Jaime Escalante (Achumani)', 5, 10);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Mercado de la 16 (Achumani)', 5, 10);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Parque Jaime Science (Achumani)', 5, 10);

-- BARRIO: Irpavi (codigo_barrio = 11)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estación Irpavi / Irpawi (Teleférico)', 5, 11);

-- BARRIO: Mallasa (codigo_barrio = 12)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Zoológico de Mallasa', 5, 12);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Valle de la Luna', 5, 12);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Muela del Diablo', 5, 12);

-- BARRIO: Següencoma (codigo_barrio = 13)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Alto Següencoma', 5, 13);

-- BARRIO: Bella Vista (codigo_barrio = 14)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Complejo Bella Vista', 5, 14);

-- BARRIO: Cota Cota (codigo_barrio = 15)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Lomas de Cota Cota', 5, 15);

-- BARRIO: Chasquipampa (codigo_barrio = 16)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Ruta Chasquipampa', 5, 16);

-- BARRIO: Ovejuyo (codigo_barrio = 17)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Ovejuyo El Arenal', 5, 17);

-- CALLES PARA ZONA: Cotahuma (codigo_zona = 6)
-- BARRIO: Llojeta (codigo_barrio = 18)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Llojeta (Establecimiento de Salud)', 6, 18);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Bajo Llojeta', 6, 18);

-- BARRIO: Pasankeri (codigo_barrio = 19)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Pasankery (Establecimiento de Salud)', 6, 19);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Alto Pasankeri Sur', 6, 19);

-- BARRIO: Tembladerani (codigo_barrio = 20)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Tembladerani (Establecimiento de Salud)', 6, 20);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Alto Tembladerani', 6, 20);

-- BARRIO: Alpacoma (codigo_barrio = 21)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('San Miguel de Alpacoma (Unidad Educativa)', 6, 21);

-- BARRIO: Belén (codigo_barrio = 22)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Belén (Establecimiento de Salud)', 6, 22);

-- BARRIO: Tacagua (codigo_barrio = 23)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Alto Tacagua', 6, 23);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Bajo Tacagua', 6, 23);

-- BARRIO: Cotahuma Central (codigo_barrio = 24)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Huallparimachi', 6, 24);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Jaime Zudañez', 6, 24);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Mercado Strongest', 6, 24);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Cotahuma', 6, 24);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Buenos Aires', 6, 24);

-- CALLES PARA ZONA: Max Paredes (codigo_zona = 7)
-- BARRIO: Munaypata (codigo_barrio = 25)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Munaypata (Establecimiento de Salud)', 7, 25);

-- BARRIO: Pura Pura (codigo_barrio = 26)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Alto Pura Pura', 7, 26);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Bosquecillo Pura Pura', 7, 26);

-- BARRIO: El Tejar (codigo_barrio = 27)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Complejo El Tejar', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Plaza Garita de Lima', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Baptista', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Potosí', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Manco Kápac', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Bautista Saavedra', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle 14 de Septiembre (El Tejar)', 7, 27);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Bajo Tejar', 7, 27);

-- BARRIO: Villa Victoria (codigo_barrio = 28)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Villa Victoria (Establecimiento de Salud)', 7, 28);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Iglesia Villa Victoria', 7, 28);

-- CALLES PARA ZONA: Periférica (codigo_zona = 8)
-- BARRIO: Villa Fátima (codigo_barrio = 29)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Policlínico Villa Fátima', 8, 29);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Mercado Villa Fátima', 8, 29);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Las Delicias (Villa Fátima)', 8, 29);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Estación Villarroel / Inalnama (Teleférico)', 8, 29);

-- BARRIO: Achachicala (codigo_barrio = 30)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Achachicala Centro', 8, 30);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Isla de Achachicala', 8, 30);

-- BARRIO: Pampahasi (codigo_barrio = 31)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Pampahasi Central', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Pampahasi Bajo', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Zona San Juan (Pampahasi)', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Valle de Las Flores A', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Valle de Las Flores B "Amor de Dios"', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Zona Villa Illimani', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Zona Primavera', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Sector Alto Escobar Uría', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Barrio Gráfico', 8, 31);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Ciudad del Niño', 8, 31);

-- BARRIO: Villa Copacabana (codigo_barrio = 32)
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Avenida Costanera (Villa Copacabana)', 8, 32);
INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES ('Calle Paraguay', 8, 32);