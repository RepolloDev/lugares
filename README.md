Sistema de Zonas, Barrios y Calles

- Tablas:
  - zona (codigo_zona, nombre_zona)
  - barrio (codigo_barrio, nombre_barrio, codigo_zona)
  - calle (codigo_calle, nombre_calle, codigo_zona, codigo_barrio)

```mermaid
erDiagram

zona {
    int codigo_zona PK
    varchar nombre_zona
}

barrio {
    int codigo_barrio PK
    varchar nombre_varrio
    int codigo_zona FK
}

calle {
    int codigo_calle PK
    varchar nombre_calle
    int codigo_zona FK
    int codigo_barrio FK
}

zona ||--o{ barrio : tiene
barrio ||--o{ calle: tiene
zona ||--o{ calle: tiene
```
