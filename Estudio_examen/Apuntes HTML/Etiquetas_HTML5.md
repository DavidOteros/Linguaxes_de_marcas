
# Etiquetas estructurales y semánticas

En HTML5, se introdujeron etiquetas semánticas para reemplazar el uso excesivo de `<div>` y aportar un significado claro a las diferentes partes de una página.

## 1.1 `<header>`

**Qué es:**  
Representa el encabezado de un documento o una sección.  
Generalmente contiene logotipos, menús de navegación, o títulos principales.

**Cuándo usarlo:**  
En la parte superior de una página o sección específica.

**Contenido permitido:**  
Puede contener otros elementos como `<nav>`, `<h1>`, imágenes, etc.

**Ejemplo:**

```html
<header>
    <h1>Mi Sitio Web</h1>
    <nav>
        <a href="#seccion1">Sección 1</a>
        <a href="#seccion2">Sección 2</a>
    </nav>
</header>
```

---

## 1.2 `<nav>`

**Qué es:**  
Representa una sección de navegación que contiene enlaces a otras partes del sitio o a sitios externos.

**Cuándo usarlo:**  
Para agrupar menús o enlaces principales de navegación.

**Contenido permitido:**  
Contiene enlaces (`<a>`) organizados como listas o simplemente en línea.

**Ejemplo:**

```html
<nav>
    <ul>
        <li><a href="#inicio">Inicio</a></li>
        <li><a href="#sobre-nosotros">Sobre Nosotros</a></li>
        <li><a href="#contacto">Contacto</a></li>
    </ul>
</nav>
```

---

## 1.3 `<section>`

**Qué es:**  
Representa una sección temática de un documento.  
Útil para dividir el contenido en bloques organizados.

**Cuándo usarlo:**  
Cuando el contenido tiene un tema específico y es independiente del resto.

**Contenido permitido:**  
Puede contener encabezados, párrafos, listas, tablas, imágenes, etc.

**Ejemplo:**

```html
<section id="seccion1">
    <h2>Acerca de Nosotros</h2>
    <p>Somos una empresa dedicada a la tecnología.</p>
</section>
```

---

## 1.4 `<article>`

**Qué es:**  
Representa contenido independiente que puede reutilizarse, como un artículo de blog, una noticia o una publicación en redes sociales.

**Cuándo usarlo:**  
Cuando el contenido tiene sentido por sí solo y no depende del contexto del resto del documento.

**Contenido permitido:**  
Encabezados, párrafos, imágenes, listas, etc.

**Ejemplo:**

```html
<article>
    <h2>Artículo de Blog</h2>
    <p>Este es un artículo interesante sobre HTML5.</p>
</article>
```

---

# 1.5 `<div>``

**Qué es:**  
`<div>` es una etiqueta genérica de contenedor que agrupa otros elementos HTML sin agregar significado semántico.

**Cuándo usarlo:**
- Cuando no hay una etiqueta semántica adecuada para el contenido.
- Para crear contenedores para aplicar estilos o scripts con CSS y JavaScript.

**Ejemplo:**

```html
<div class="contenedor">
    <header>
        <h1>Encabezado dentro de un div</h1>
    </header>
    <p>Contenido agrupado dentro de un div.</p>
</div>
```
**Buenas prácticas con `<div>`:**
1. Usar clases o identificadores:
Ayuda a identificar el propósito del <div> para estilos o scripts.
```html
<div id="sidebar" class="menu-lateral">
    <!-- Contenido de la barra lateral -->
</div>
```
2. Evitar abuso de `<div>`:
Si existe una etiqueta semántica adecuada como `<section>`, `<article>`, o `<header>`, úsala en lugar de `<div>`.

---

## 1.6 `<aside>`

**Qué es:**  
Representa contenido relacionado pero no esencial con el contenido principal. Generalmente se utiliza para barras laterales o cajas informativas.

**Cuándo usarlo:**  
Para mostrar anuncios, enlaces adicionales, o contenido complementario.

**Contenido permitido:**  
Todo tipo de contenido (párrafos, listas, imágenes, etc.).

**Ejemplo:**

```html
<aside>
    <h3>Publicidad</h3>
    <p>¡Visita nuestra tienda en línea para descuentos exclusivos!</p>
</aside>
```

---

## 1.7 `<footer>`

**Qué es:**  
Representa el pie de página de un documento o una sección.  
Generalmente contiene información adicional, como derechos de autor o enlaces importantes.

**Cuándo usarlo:**  
Al final de la página o sección.

**Contenido permitido:**  
Párrafos, enlaces, listas, etc.

**Ejemplo:**

```html
<footer>
    <p>&copy; 2024 Mi Sitio Web</p>
</footer>
```
---

## 1.8 `<hr>`

**Qué es:**  
Se utiliza para indicar una separación temática o un cambio de contexto en el contenido.
Es un elemento auto-contenido, lo que significa que no necesita una etiqueta de cierre (como `<img>`).

Por defecto, los navegadores dibujan una línea horizontal en la página para separar secciones.

**NO es una etiqueta estructural o semántica**, pero es útil para dividir contenido visualmente.

**Cuándo usarlo:**  
1. Para separar secciones de contenido:

    -  Si tienes artículos o bloques de texto largos y quieres indicar un cambio de tema.
1. Para dividir contenido dentro de un artículo:

    - Si un artículo tiene varias partes relacionadas, puedes usar `<hr>` como un divisor visual.



---

## Ejemplo completo con todas las etiquetas semánticas

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Semántica</title>
</head>
<body>
    <header>
        <h1>Mi Sitio Web</h1>
        <nav>
            <a href="#seccion1">Acerca de Nosotros</a>
            <a href="#seccion2">Servicios</a>
            <a href="#contacto">Contacto</a>
        </nav>
    </header>

    <main>
        <section id="seccion1">
            <h2>Acerca de Nosotros</h2>
            <p>Somos una empresa dedicada al desarrollo de soluciones tecnológicas.</p>
        </section>
        <hr>
        <section id="seccion2">
            <h2>Servicios</h2>
            <article>
                <h3>Diseño Web</h3>
                <p>Ofrecemos diseño de páginas web modernas y funcionales.</p>
            </article>
            <article>
                <h3>Desarrollo de Software</h3>
                <p>Creamos soluciones personalizadas para empresas.</p>
            </article>
        </section>

        <aside>
            <h3>Noticias Relacionadas</h3>
            <p>No te pierdas nuestras últimas actualizaciones en tecnología.</p>
        </aside>
    </main>

    <footer>
        <p>&copy; 2024 Mi Sitio Web. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
```

## 1.8 `<figure>` y `<figcaption>`

**Qué es:**  

- `<figure>` es una etiqueta semántica que se utiliza para agrupar contenido gráfico o ilustrativo, como imágenes, gráficos, diagramas, o código embebido.  
- `<figcaption>` es una etiqueta asociada que se usa dentro de `<figure>` para proporcionar una descripción o pie de figura.

**Cuándo usarlo:**  

- Cuando necesitas agrupar contenido gráfico (como imágenes o videos) junto con un texto explicativo.  
- Ideal para contenido que necesita contexto adicional o descripción.

**Contenido permitido:**  

- Dentro de `<figure>`, puedes incluir imágenes (`<img>`), videos (`<video>`), audios (`<audio>`), tablas (`<table>`), o cualquier otro elemento ilustrativo.  
- `<figcaption>` debe ser un hijo directo de `<figure>` y puede contener texto o elementos en línea.

**Ejemplo:**

```html
<figure>
    <img src="imagen-de-ejemplo.jpg" alt="Descripción de la imagen">
    <figcaption>Esta es una imagen de ejemplo que muestra un gráfico de datos.</figcaption>
</figure>
```

**Explicación del ejemplo:**  

- `<img>`: Representa la imagen principal dentro del contenedor `<figure>`. Su atributo `alt` proporciona una descripción para accesibilidad.  
- `<figcaption>`: Proporciona un texto explicativo visible debajo de la imagen.

**Cuándo no usarlo:**  

- Si la imagen es decorativa y no necesita contexto adicional, es mejor usar solo `<img>` con un atributo `alt=""`.

**Caso práctico más avanzado:**

```html
<figure>
    <video controls>
        <source src="video-ejemplo.mp4" type="video/mp4">
        Tu navegador no soporta este video.
    </video>
    <figcaption>Un video explicativo sobre el impacto del cambio climático.</figcaption>
</figure>
```

En este caso, el `<figure>` contiene un video y su respectivo pie de figura explicativo.

## 1.9 `<br>`

**Qué es:**  
`<br>` es una etiqueta auto-contenida que se utiliza para crear un salto de línea en el texto, moviendo el contenido siguiente al siguiente renglón.

**Cuándo usarlo:**  

- Cuando necesitas un salto de línea puntual dentro de un bloque de texto.  
- Ideal para líneas de dirección, poemas, o formatos específicos donde el texto debe continuar en la siguiente línea.

**Contenido permitido:**  

- Debe colocarse dentro de elementos que permitan texto (como `<p>` o `<div>`).

**Ejemplo:**

```html
<p>Dirección: Calle Ejemplo 123<br>Ciudad, País<br>Código Postal: 45678</p>
```

**Nota:**  
No abuses de `<br>` para añadir espacios entre bloques; usa márgenes y estilos con CSS para eso.


---

## Listas en HTML

### Listas Ordenadas (`<ol>`)

### Qué es:
La etiqueta `<ol>` define una lista ordenada, en la que los elementos se enumeran automáticamente con números o letras, según el estilo especificado.

### Cuándo usarlo:
- Cuando necesitas mostrar elementos en un orden específico.
- Ideal para listas numeradas, instrucciones paso a paso, o clasificaciones.

### Contenido permitido:
- Solo se permiten elementos `<li>` (list items) como hijos directos.

### Ejemplo:
```html
<ol>
    <li>Prepara los ingredientes.</li>
    <li>Mezcla los ingredientes.</li>
    <li>Hornea durante 30 minutos.</li>
</ol>
```

### Resultado visual:
1. Prepara los ingredientes.
2. Mezcla los ingredientes.
3. Hornea durante 30 minutos.

---

### Listas No Ordenadas (`<ul>`)

### Qué es:
La etiqueta `<ul>` define una lista no ordenada, donde los elementos se representan con viñetas (puntos) en lugar de números o letras.

### Cuándo usarlo:
- Cuando los elementos no tienen un orden específico.
- Ideal para listas de características, puntos clave o elementos relacionados.

### Contenido permitido:
- Solo se permiten elementos `<li>` (list items) como hijos directos.

### Ejemplo:
```html
<ul>
    <li>Manzanas</li>
    <li>Naranjas</li>
    <li>Plátanos</li>
</ul>
```

### Resultado visual:
- Manzanas
- Naranjas
- Plátanos

---

### Listas de Definiciones (`<dl>`)

### Qué es:
La etiqueta `<dl>` define una lista de definiciones, que se utiliza para mostrar pares de términos y sus definiciones.

### Cuándo usarlo:
- Cuando necesitas presentar un conjunto de términos junto con sus explicaciones o significados.
- Ideal para glosarios, listas de términos técnicos, o descripciones.

### Contenido permitido:
- Los elementos hijos deben ser `<dt>` (definición del término) y `<dd>` (descripción del término).

### Ejemplo:
```html
<dl>
    <dt>HTML</dt>
    <dd>Lenguaje de marcado utilizado para estructurar páginas web.</dd>
    <dt>CSS</dt>
    <dd>Lenguaje utilizado para diseñar y estilizar páginas web.</dd>
</dl>
```

### Resultado visual:
- **HTML**: Lenguaje de marcado utilizado para estructurar páginas web.
- **CSS**: Lenguaje utilizado para diseñar y estilizar páginas web.

---

## Notas Importantes

### Anidación de listas:
Puedes anidar listas ordenadas, no ordenadas o listas de definiciones dentro de otra lista.

### Ejemplo:
```html
<ul>
    <li>Frutas
        <ul>
            <li>Manzanas</li>
            <li>Plátanos</li>
        </ul>
    </li>
    <li>Verduras</li>
</ul>
```

---

## Personalización con CSS:

Puedes cambiar el estilo de las viñetas en `<ul>` o el formato de los números en `<ol>` utilizando CSS.

### Ejemplo:
```html
<style>
    ul {
        list-style-type: square;
    }
    ol {
        list-style-type: upper-roman;
    }
</style>

<ul>
    <li>Elemento 1</li>
    <li>Elemento 2</li>
</ul>

<ol>
    <li>Paso 1</li>
    <li>Paso 2</li>
</ol>
```

### Resultado visual:
- Viñetas cuadradas para la lista no ordenada.
- Números romanos para la lista ordenada.

---

## Resumen de Listas

| Etiqueta | Propósito           | Elementos permitidos |
|----------|---------------------|----------------------|
| `<ol>`   | Lista ordenada      | `<li>`              |
| `<ul>`   | Lista no ordenada   | `<li>`              |
| `<dl>`   | Lista de definiciones | `<dt>` y `<dd>`     |

---
## Resumen

| **Etiqueta** | **Propósito**                                     | **Dónde se usa**                       |
|--------------|---------------------------------------------------|----------------------------------------|
| `<header>`   | Encabezado principal o de una sección.            | Parte superior de la página o sección. |
| `<nav>`      | Menú de navegación.                               | Enlaces a otras partes del sitio.      |
| `<section>`  | Contenido temático de una página.                 | Para dividir el contenido en bloques.  |
| `<article>`  | Contenido independiente (artículos, posts).       | Publicaciones, noticias, blogs.        |
| `<aside>`    | Contenido relacionado (barras laterales).         | Información complementaria.            |
| `<div>`      | Contenedor genérico.	                           | Para estilos y scripts.                |
| `<footer>`   | Pie de página.                                    | Final del documento o sección.         |
| `<hr>`       | Entre el contenido a separar                      | Al final de la sección, párrafo etc.   |
| `<br>`       | Entre el contenido a separar                      | Al final del parrafo o la línea que te interese separar  |

