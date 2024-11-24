
# Propiedades Básicas de las Imágenes

## 1. Propiedades Básicas de las Imágenes

### 1.1 Tamaño: `width` y `height`
Controlan el ancho y la altura de la imagen. Si defines solo una de estas propiedades, la otra se ajustará automáticamente para mantener las proporciones (a menos que uses propiedades específicas como `object-fit`).

**Ejemplo:**
```css
img {
    width: 300px; /* Ancho fijo */
    height: auto; /* Ajusta automáticamente la altura */
}
```

---

### 1.2 Tamaño Máximo: `max-width` y `max-height`
Restringen el tamaño máximo de la imagen, lo que es útil para mantenerla responsive.

**Ejemplo:**
```css
img {
    max-width: 100%; /* La imagen no será más ancha que el contenedor */
    height: auto; /* Mantiene las proporciones */
}
```

---

### 1.3 Bordes: `border`
Añade un borde alrededor de la imagen. Puedes personalizar su grosor, estilo y color.

**Ejemplo:**
```css
img {
    border: 5px solid black; /* Borde negro sólido */
    border-radius: 15px; /* Bordes redondeados */
}
```

---

### 1.4 Margen y Relleno: `margin` y `padding`
- `margin`: Espacio externo entre la imagen y otros elementos.
- `padding`: Espacio interno entre el borde y la imagen.

**Ejemplo:**
```css
img {
    margin: 20px auto; /* Centrado horizontal */
    padding: 10px; /* Espacio interno */
    border: 2px solid gray;
}
```

---

## 2. Propiedades de Fondo para Imágenes

### 2.1 Imagen de Fondo: `background-image`
Establece una imagen como fondo de un elemento.

**Ejemplo:**
```css
div {
    background-image: url('imagen.jpg');
}
```

---

### 2.2 Repetición: `background-repeat`
Define cómo se repite la imagen de fondo.

| Valor      | Descripción                                                 |
|------------|-------------------------------------------------------------|
| `repeat`   | Repite la imagen en ambas direcciones (por defecto).        |
| `repeat-x` | Repite solo en el eje horizontal.                           |
| `repeat-y` | Repite solo en el eje vertical.                             |
| `no-repeat`| No repite la imagen.                                       |
| `space`    | Repite con espacios iguales entre cada imagen.              |
| `round`    | Escala la imagen para encajar perfectamente dentro del contenedor. |

**Ejemplo:**
```css
div {
    background-image: url('imagen.jpg');
    background-repeat: no-repeat; /* No repetir */
    background-position: center; /* Centrar la imagen */
}
```

---

### 2.3 Ajuste: `background-size`
Controla el tamaño de la imagen de fondo.

| Valor     | Descripción                                                         |
|-----------|---------------------------------------------------------------------|
| `cover`   | La imagen cubre todo el contenedor, recortándose si es necesario.   |
| `contain` | La imagen se escala para caber completamente en el contenedor.     |
| `auto`    | Usa el tamaño original de la imagen.                               |

**Ejemplo:**
```css
div {
    background-image: url('imagen.jpg');
    background-size: cover;
}
```

---

### 2.4 Posición: `background-position`
Define la posición de la imagen dentro de su contenedor.

**Ejemplo:**
```css
div {
    background-image: url('imagen.jpg');
    background-position: top left; /* Arriba a la izquierda */
}
```

---

### 2.5 Fijación: `background-attachment`
Controla si la imagen de fondo se desplaza con el contenido.

| Valor     | Descripción                            |
|-----------|----------------------------------------|
| `scroll`  | La imagen se desplaza con el contenido.|
| `fixed`   | La imagen permanece fija en el viewport.|
| `local`   | La imagen se desplaza con el elemento. |

**Ejemplo:**
```css
div {
    background-image: url('imagen.jpg');
    background-attachment: fixed;
}
```

---

## 3. Propiedades Avanzadas para Imágenes

### 3.1 Ajuste dentro del contenedor: `object-fit`
Controla cómo una imagen (u otro contenido) encaja en su contenedor.

| Valor       | Descripción                                                    |
|-------------|----------------------------------------------------------------|
| `fill`      | La imagen se deforma para rellenar todo el contenedor.         |
| `contain`   | Escala la imagen para caber completamente dentro del contenedor.|
| `cover`     | Escala la imagen para cubrir todo el contenedor.               |
| `none`      | La imagen conserva sus dimensiones originales.                 |
| `scale-down`| Escala la imagen como `none` o `contain`, según cuál sea más pequeño.|

**Ejemplo:**
```css
img {
    object-fit: cover;
    width: 300px;
    height: 200px;
}
```

---

### 3.2 Filtros: `filter`
Aplica efectos visuales como desenfoque, brillo, escala de grises, etc.

| Filtro         | Descripción                   |
|----------------|-------------------------------|
| `blur(px)`     | Aplica desenfoque.           |
| `grayscale(%)` | Convierte a escala de grises.|
| `brightness(%)`| Ajusta el brillo.            |
| `contrast(%)`  | Ajusta el contraste.         |
| `sepia(%)`     | Aplica un tono sepia.        |

**Ejemplo:**
```css
img {
    filter: grayscale(50%) brightness(80%);
}
```

---

### 3.3 Transparencia: `opacity`
Controla la opacidad de la imagen.

**Ejemplo:**
```css
img {
    opacity: 0.8; /* 80% opacidad */
}
```

---

### 3.4 Sombra: `box-shadow`
Añade una sombra alrededor de la imagen.

**Ejemplo:**
```css
img {
    box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.5);
}
```

---

### 3.5 Recorte: `clip-path`
Recorta la imagen en formas personalizadas.

**Ejemplo:**
```css
img {
    clip-path: circle(50%);
}
```

---

## 4. Ejemplo completo con todas las propiedades

**HTML:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Propiedades de Imágenes</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="contenedor">
        <img src="imagen.jpg" alt="Ejemplo de imagen" class="imagen">
    </div>
</body>
</html>
```

**CSS:**
```css
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.contenedor {
    width: 400px;
    margin: 50px auto;
    text-align: center;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.imagen {
    width: 100%;
    max-width: 300px;
    height: auto;
    border: 5px solid #333;
    border-radius: 15px;
    filter: brightness(90%) sepia(30%);
    box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
}
```
