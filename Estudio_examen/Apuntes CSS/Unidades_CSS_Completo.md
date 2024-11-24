
# Unidades en CSS

En CSS, las unidades se utilizan para definir medidas como tamaños de fuentes, anchos, márgenes, rellenos, etc. Se dividen en unidades absolutas y unidades relativas.

## 1. Unidades Absolutas
Las unidades absolutas tienen un tamaño fijo y no dependen del contexto del elemento o del navegador. Son ideales para diseños impresos o dimensiones precisas.

| Unidad | Equivalencia | Uso principal |
|--------|--------------|---------------|
| `px`   | Píxeles. 1px = 1/96 de una pulgada. | Dimensiones precisas en pantalla. |
| `cm`   | Centímetros. | Impresión o diseño físico. |
| `mm`   | Milímetros. | Impresión o diseño físico. |
| `in`   | Pulgadas. 1in = 96px. | Impresión o diseño físico. |
| `pt`   | Puntos. 1pt = 1/72 de una pulgada. | Tipografía en diseño impreso. |

### Ejemplo con píxeles (`px`)
```css
div {
    width: 300px; /* Ancho fijo de 300 píxeles */
    height: 200px; /* Altura fija de 200 píxeles */
}
```

**Ventajas de unidades absolutas:**
- Proporcionan control exacto sobre el tamaño.
- No dependen de otros elementos.

**Desventajas:**
- No se adaptan a diferentes tamaños de pantalla.
- No son ideales para diseño responsivo.

---

## 2. Unidades Relativas

### ¿Qué son las unidades relativas?
Las unidades relativas dependen de:
- Otros elementos: Como el "padre" o "contenedor" de un elemento.
- El viewport: El área visible del navegador.

Esto significa que su tamaño cambia dependiendo del contexto en el que se encuentren.

### Concepto clave: "Padre" o "contenedor"
El "padre" o "contenedor" de un elemento es el elemento que lo contiene directamente en el HTML.

#### Ejemplo:
```html
<div style="font-size: 20px;">
    <!-- Este div es el "padre" -->
    <p style="font-size: 1em;">Texto en un párrafo</p>
</div>
```
El tamaño de la fuente del `<p>` es relativo al tamaño de la fuente del `<div>` (su "padre").  
Si el `<div>` tiene un `font-size: 20px;`, el `<p>` con `1em` será de `20px`.

---

### Tipos de unidades relativas

#### 2.1 `em`
Relativa al tamaño de la fuente del elemento padre.
- Si el tamaño del padre es 16px:
  - `1em = 16px`
  - `2em = 32px`

##### Ejemplo:
```css
div {
    font-size: 20px; /* Tamaño del padre */
}
p {
    font-size: 1.5em; /* 30px (20px x 1.5) */
}
```

**Nota importante:** Si usas `em` dentro de elementos que ya tienen un tamaño relativo, el efecto puede ser acumulativo. Esto se llama cascada de `em`.

#### 2.2 `rem` (Root em)
Relativa al tamaño de la fuente del elemento raíz (`html`).
- No se acumula como `em`. Siempre toma como referencia el tamaño del `html`.

##### Ejemplo:
```css
html {
    font-size: 16px; /* Tamaño raíz */
}
h1 {
    font-size: 2rem; /* 32px (16px x 2) */
}
p {
    font-size: 1rem; /* 16px */
}
```

**Diferencia entre `em` y `rem`:**
- Usa `rem` para mantener consistencia en todo el sitio.
- Usa `em` para tamaños relativos al contexto local (contenedor o padre).

#### 2.3 `%`
Relativa al tamaño del contenedor padre.
- Comúnmente utilizada para:
  - Ancho (`width`): Relativo al ancho del padre.
  - Altura (`height`): Relativo a la altura del padre.

##### Ejemplo:
```html
<div style="width: 400px; height: 200px;">
    <!-- Este div es el padre -->
    <div style="width: 50%; height: 50%; background: lightblue;">
        <!-- Este div ocupa el 50% del ancho y altura del padre -->
    </div>
</div>
```

#### 2.4 `vh` y `vw` (Viewport Height y Viewport Width)
Relativas al tamaño del viewport (área visible de la ventana del navegador).
- `1vh` = 1% de la altura del viewport.
- `1vw` = 1% del ancho del viewport.

##### Ejemplo:
```css
div {
    width: 50vw; /* Mitad del ancho del viewport */
    height: 25vh; /* Un cuarto de la altura del viewport */
    background-color: coral;
}
```

#### 2.5 `vmin` y `vmax`
Basadas en las dimensiones del viewport.
- `vmin`: Relativa al lado más pequeño del viewport.
- `vmax`: Relativa al lado más grande del viewport.

##### Ejemplo:
```css
div {
    width: 50vmin; /* 50% del lado más pequeño del viewport */
    height: 50vmax; /* 50% del lado más grande del viewport */
    background-color: lightblue;
}
```

---

## 3. Comparativa de unidades relativas

| Unidad | Relativa a                 | Uso principal                                      |
|--------|----------------------------|---------------------------------------------------|
| `em`   | Tamaño del elemento padre. | Tamaños relativos a un contenedor local.         |
| `rem`  | Tamaño del elemento raíz.  | Tamaños consistentes en todo el documento.       |
| `%`    | Tamaño del contenedor padre.| Anchos y alturas adaptativas.                    |
| `vh`   | Altura del viewport.       | Elementos que ocupan una parte de la pantalla.   |
| `vw`   | Ancho del viewport.        | Diseños adaptativos horizontales.               |
| `vmin` | Menor entre `vh` y `vw`.   | Ajuste proporcional en pantallas cuadradas.     |
| `vmax` | Mayor entre `vh` y `vw`.   | Ajuste proporcional en pantallas anchas o altas.|

---

## 4. Ejemplo completo
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unidades Relativas</title>
    <style>
        html {
            font-size: 16px; /* Base para rem */
        }

        body {
            margin: 0;
            padding: 0;
        }

        header {
            height: 20vh; /* 20% de la altura del viewport */
            background-color: lightblue;
            font-size: 2rem; /* 32px */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .contenedor {
            width: 80%; /* 80% del ancho del contenedor padre */
            margin: 5vh auto; /* Centrado vertical y horizontal */
            padding: 2em; /* Relleno relativo al texto */
            background-color: #f4f4f4;
            border-radius: 1rem; /* Bordes redondeados */
        }

        p {
            font-size: 1.5rem; /* Relativo al tamaño del elemento raíz */
            line-height: 2; /* Espaciado entre líneas */
        }
    </style>
</head>
<body>
    <header>Unidades Relativas en CSS</header>
    <div class="contenedor">
        <p>Este es un ejemplo que combina varias unidades relativas.</p>
    </div>
</body>
</html>
```

---

## Resumen
- `em`: Relativo al padre. Útil para diseños escalables dentro de contenedores específicos.
- `rem`: Relativo al raíz. Perfecto para tamaños globales consistentes.
- `%`: Relativo al contenedor. Ideal para anchos y alturas adaptativos.
- `vh`/`vw`: Relativo al viewport. Genial para diseño responsivo.
- `vmin`/`vmax`: Proporcional al lado más pequeño o más grande. Útil para diseños adaptativos avanzados.
