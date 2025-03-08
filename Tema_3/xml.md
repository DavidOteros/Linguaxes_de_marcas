## Cuadro explicativo de XML

Aquí tienes un cuadro explicativo con cada concepto y su relación, acompañado de un ejemplo para hacerlo más claro:

| **Concepto**  | **Definición** | **Ejemplo en XML** | **Explicación** |
|--------------|--------------|-------------------|----------------|
| **Etiqueta (Tag)** | Marcadores que definen el inicio y el fin de un elemento. Siempre van entre `< >`. | `<nombre>Punk</nombre>` | `<nombre>` es la etiqueta de apertura, y `</nombre>` es la etiqueta de cierre. |
| **Elemento** | Todo lo que se encuentra entre la etiqueta de apertura y la de cierre, incluido su contenido. | `<nombre>Punk</nombre>` | El elemento es `nombre` e incluye el contenido `"Punk"`. |
| **Atributo** | Información adicional añadida dentro de la etiqueta de apertura. | `<persona genero="masculino"></persona>` | `genero` es un atributo del elemento `persona`. Su valor es `"masculino"`. |

## Ejemplo completo:

```xml
<persona genero="masculino">
  <nombre>Punk</nombre>
  <edad>30</edad>
</persona>
```