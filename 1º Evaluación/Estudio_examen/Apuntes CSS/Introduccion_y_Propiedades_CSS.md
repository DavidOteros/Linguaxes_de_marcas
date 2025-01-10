
# Introducción a CSS

## ¿Qué es CSS?
CSS significa Hojas de Estilo en Cascada. Se utiliza para estilizar elementos de HTML, permitiéndote:
- Cambiar colores, fuentes y tamaños.
- Diseñar distribuciones (layouts) complejas.
- Adaptar tu sitio para dispositivos móviles (responsive design).

## 1. Formas de aplicar CSS
### 1.1 Estilo en línea
Se usa el atributo `style` dentro de una etiqueta HTML.

**Ventaja:** Rápido para pruebas o cambios puntuales.  
**Desventaja:** Difícil de mantener en proyectos grandes.

**Ejemplo:**
```html
<p style="color: blue; font-size: 20px;">Este texto es azul.</p>
```

### 1.2 Estilo interno
Se define dentro de la etiqueta `<style>` en el `<head>` del documento HTML.

**Ventaja:** Todo el CSS está en el mismo archivo que el HTML.  
**Desventaja:** No reutilizable para múltiples páginas.

**Ejemplo:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            background-color: lightgray;
        }
        p {
            color: blue;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <p>Este texto es azul y grande.</p>
</body>
</html>
```

### 1.3 Estilo externo
Se guarda en un archivo separado con la extensión `.css` y se enlaza con el documento HTML usando `<link>`.

**Ventaja:** Es el método recomendado para proyectos grandes y reutilización en múltiples páginas.  
**Desventaja:** Requiere archivos adicionales.

**Archivo CSS (estilo.css):**
```css
body {
    background-color: lightgray;
}
p {
    color: blue;
    font-size: 20px;
}
```

**Archivo HTML:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
    <p>Este texto es azul y grande.</p>
</body>
</html>
```

## 2. Selectores básicos de CSS
### 2.1 Selectores por etiqueta
Aplica estilos a todas las etiquetas de un mismo tipo.
```css
h1 {
    color: red;
}
p {
    font-size: 18px;
}
```

### 2.2 Selectores por clase
Aplica estilos a elementos con una clase específica.  
Se usa un punto (`.`) antes del nombre de la clase.

**HTML:**
```html
<p class="importante">Este texto es importante.</p>
```

**CSS:**
```css
.importante {
    color: red;
    font-weight: bold;
}
```

### 2.3 Selectores por id
Aplica estilos a un elemento único identificado por un id.  
Se usa el símbolo de almohadilla (`#`).

**HTML:**
```html
<p id="destacado">Este texto está destacado.</p>
```

**CSS:**
```css
#destacado {
    background-color: yellow;
    font-size: 22px;
}
```

## 3. Propiedades CSS básicas
### 3.1 Propiedades de texto
| Propiedad         | Descripción                                      | Ejemplo              |
|--------------------|--------------------------------------------------|----------------------|
| `color`           | Define el color del texto.                       | `color: red;`        |
| `font-size`       | Define el tamaño de la fuente.                   | `font-size: 16px;`   |
| `font-weight`     | Define el grosor del texto (`normal`, `bold`).    | `font-weight: bold;` |
| `text-align`      | Alinea el texto (`left`, `center`, `right`).      | `text-align: center;`|
| `text-decoration` | Agrega o elimina decoraciones (`underline`).      | `text-decoration: none;`|

### 3.2 Propiedades de fondo
| Propiedad          | Descripción                           | Ejemplo                      |
|---------------------|---------------------------------------|------------------------------|
| `background-color` | Define el color de fondo.             | `background-color: lightblue;` |
| `background-image` | Aplica una imagen de fondo.           | `background-image: url('fondo.jpg');` |

### 3.3 Propiedades de caja
| Propiedad   | Descripción                                    | Ejemplo                 |
|-------------|------------------------------------------------|-------------------------|
| `width`     | Define el ancho del elemento.                 | `width: 100px;`         |
| `height`    | Define la altura del elemento.                | `height: 50px;`         |
| `padding`   | Espacio interno entre el contenido y el borde.| `padding: 10px;`        |
| `margin`    | Espacio externo alrededor del elemento.       | `margin: 20px;`         |
| `border`    | Define un borde alrededor del elemento.       | `border: 1px solid black;`|
