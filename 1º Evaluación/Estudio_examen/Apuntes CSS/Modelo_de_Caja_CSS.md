
# Modelo de Caja en CSS

El Modelo de Caja es el sistema que utiliza CSS para calcular el espacio que ocupa cada elemento en la página. Todo elemento es tratado como una caja rectangular compuesta por varias capas: contenido, relleno, borde y margen.

## 1. Estructura del Modelo de Caja

### 1.1 Capas del Modelo de Caja

| Capa      | Descripción                                                                           |
|-----------|---------------------------------------------------------------------------------------|
| Contenido | Lo que se muestra dentro del elemento, como texto, imágenes u otros elementos.       |
| Relleno   | Espacio entre el contenido y el borde. Aumenta el tamaño interno del elemento.        |
| Borde     | Línea que rodea al relleno. Tiene grosor, estilo y color personalizables.             |
| Margen    | Espacio entre el borde del elemento y otros elementos cercanos.                      |

### 1.2 Fórmula para calcular el tamaño total de un elemento

Por defecto, el tamaño total de un elemento se calcula así:
```css
Tamaño total = width + padding izquierdo + padding derecho + border izquierdo + border derecho
```

**Ejemplo:**
```css
div {
    width: 200px; /* Contenido */
    padding: 10px; /* Relleno (10px a cada lado) */
    border: 5px solid black; /* Borde (5px a cada lado) */
}
```

**Cálculo del tamaño total:**
200px (contenido) + 10px + 10px (relleno) + 5px + 5px (borde) = **230px de ancho total**.

---

## 2. Propiedades principales del Modelo de Caja

### 2.1 `width` y `height`
- Estas propiedades controlan el tamaño del contenido.
- Por defecto, solo afectan al contenido (sin incluir relleno, borde ni margen).
- Los valores pueden ser absolutos (`px`, `cm`) o relativos (`%`, `em`).

**Ejemplo práctico:**
```css
div {
    width: 300px;
    height: 150px;
    background-color: lightgray;
}
```

---

### 2.2 `padding` (relleno interno)
- Define el espacio entre el contenido y el borde.
- Puedes aplicar relleno a cada lado o usar un valor único para los cuatro lados.

**Propiedades específicas de `padding`:**

| Propiedad      | Descripción                                  |
|----------------|----------------------------------------------|
| `padding`      | Define el relleno para los 4 lados.          |
| `padding-top`  | Relleno en la parte superior.               |
| `padding-right`| Relleno a la derecha.                       |
| `padding-bottom`| Relleno en la parte inferior.              |
| `padding-left` | Relleno a la izquierda.                     |

**Ejemplo práctico:**
```css
div {
    padding: 20px; /* Relleno uniforme en los 4 lados */
}

p {
    padding: 10px 15px; /* Vertical: 10px, Horizontal: 15px */
}

h1 {
    padding: 10px 15px 20px 25px; /* Superior, Derecha, Inferior, Izquierda */
}
```

---

### 2.3 `border` (borde)
- Rodea el relleno y el contenido.
- Personalizable en grosor, estilo y color.

**Propiedades específicas de `border`:**

| Propiedad       | Descripción                                  |
|-----------------|----------------------------------------------|
| `border-width`  | Grosor del borde (`1px`, `2px`, etc.).       |
| `border-style`  | Estilo del borde (`solid`, `dashed`, `none`).|
| `border-color`  | Color del borde.                            |

**Ejemplo práctico:**
```css
div {
    border: 5px solid black; /* Borde sólido negro */
    border-radius: 10px; /* Esquinas redondeadas */
}

p {
    border-width: 2px;
    border-style: dashed; /* Borde punteado */
    border-color: red;
}
```

---

### 2.4 `margin` (margen externo)
- Define el espacio entre un elemento y otros elementos.
- Similar a `padding`, puedes aplicar márgenes a cada lado o a los cuatro lados a la vez.

**Propiedades específicas de `margin`:**

| Propiedad      | Descripción                                  |
|----------------|----------------------------------------------|
| `margin`       | Define el margen para los 4 lados.           |
| `margin-top`   | Margen en la parte superior.                |
| `margin-right` | Margen a la derecha.                        |
| `margin-bottom`| Margen en la parte inferior.                |
| `margin-left`  | Margen a la izquierda.                      |

**Ejemplo práctico:**
```css
div {
    margin: 30px; /* Margen uniforme de 30px */
}

h1 {
    margin: 20px 10px; /* Vertical: 20px, Horizontal: 10px */
}

p {
    margin: 5px 10px 15px 20px; /* Superior, Derecha, Inferior, Izquierda */
}
```

---

## 3. Propiedad `box-sizing`

### ¿Qué es `box-sizing`?
Controla cómo se calcula el tamaño total del elemento (`ancho` y `alto`):
- `content-box` (por defecto):
  - `width` y `height` solo afectan al contenido.
  - No incluye `padding` ni `border` en el cálculo.
- `border-box`:
  - `width` y `height` incluyen `padding` y `border`.
  - Simplifica el cálculo del tamaño total.

**Ejemplo práctico:**
```css
div {
    width: 300px;
    padding: 20px;
    border: 5px solid black;
    box-sizing: border-box; /* El total sigue siendo 300px */
}
```

---

## 4. Ejemplo ampliado del Modelo de Caja

**HTML:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modelo de Caja</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
    <div class="contenedor">
        <h1>Título</h1>
        <p>Este es un párrafo dentro del modelo de caja. Vamos a explorar márgenes, rellenos y bordes.</p>
    </div>
</body>
</html>
```

**CSS:**
```css
/* Estilo general */
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

/* Contenedor principal */
.contenedor {
    width: 80%; /* 80% del ancho del viewport */
    max-width: 600px; /* Máximo 600px */
    padding: 20px; /* Relleno interno */
    margin: 20px auto; /* Centrado horizontal */
    border: 5px solid darkblue; /* Borde azul oscuro */
    border-radius: 10px; /* Bordes redondeados */
    background-color: #f0f0f0; /* Fondo gris claro */
    box-sizing: border-box; /* Incluye relleno y borde en el cálculo */
}

/* Estilo del título */
.contenedor h1 {
    margin-bottom: 10px; /* Espacio entre el título y el párrafo */
    text-align: center; /* Centrado horizontal */
    color: darkblue;
}

/* Estilo del párrafo */
.contenedor p {
    margin: 0; /* Elimina márgenes por defecto */
    line-height: 1.8; /* Espaciado entre líneas */
    color: #333; /* Color de texto gris oscuro */
}
```

---

## 5. Resumen del Modelo de Caja

| Propiedad       | Descripción                                       |
|-----------------|---------------------------------------------------|
| `width` / `height` | Tamaño del contenido del elemento.              |
| `padding`       | Espacio entre el contenido y el borde.            |
| `border`        | Borde que rodea el relleno y el contenido.         |
| `margin`        | Espacio entre el borde del elemento y otros.       |
| `box-sizing`    | Controla cómo se calcula el tamaño total del elemento.|
