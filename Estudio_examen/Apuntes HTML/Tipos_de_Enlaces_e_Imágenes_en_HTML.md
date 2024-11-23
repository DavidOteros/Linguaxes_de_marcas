# APUNTES LINGUAXES
---

# Tipos de enlaces en HTML

Los enlaces (`<a>` tag) son uno de los elementos más importantes en HTML, ya que conectan páginas entre sí o te dirigen a otros recursos.

En HTML, puedes insertar links usando la etiqueta `<a>`.

## Atributos básicos de `<img>`:
- `href`: Especifica la URL.
- `alt`: Asocia un texto con el link.
- `target`: Le dice al navegador donde abrir el link. Hay cuatro targets, y cada uno comienza con el carácter (_):
    - _blank: Abre el enlace en una nueva pestaña
    - _parent: Abre el enlace vinculado en la ventana padre de la ventana o marco actual.
    - _self: Abre el enlace vinculado en la misma ventana o pestaña que contiene el enlace. Es el valor predeterminado, por lo que no necesitas especificarlo explícitamente.
    - _top: Abre el enlace en toda la ventana del navegador, ignorando marcos o subventanas.

## Tipos principales de enlaces:

### Enlaces externos:
Llevan al usuario a una página fuera de tu sitio web.

**Ejemplo:**
```html
<a href="https://google.com" target="_blank">Ir a Google</a>
```
- `href`: Define la URL a la que llevará el enlace.
- `target="_blank"`: Abre el enlace en una nueva pestaña.

### Enlaces internos:
Navegan dentro de tu propio sitio web.

**Ejemplo:**
```html
<a href="pagina2.html">Ir a la página 2</a>
```
Este enlace llevará al archivo `pagina2.html`, que debe estar en la misma carpeta.


### Enlaces de descarga:
Permiten descargar un archivo al hacer clic.

**Ejemplo:**
```html
<a href="documento.pdf" download>Descargar archivo</a>
```

### Enlaces de correo electrónico:
Abren un cliente de correo para enviar un email.

**Ejemplo:**
```html
<a href="mailto:ejemplo@correo.com">Envíame un correo</a>
```
___
# Formas de insertar imágenes en HTML

En HTML, puedes insertar imágenes usando la etiqueta `<img>`, que no requiere etiqueta de cierre.

## Atributos básicos de `<img>`:
- `src`: Especifica la ruta de la imagen.
- `alt`: Texto alternativo que aparece si la imagen no se puede cargar (importante para accesibilidad).
- `height`: Especifica el tamaño de la altura
- `width`: Especifica el tamaño del ancho

### Formas de cargar imágenes:

#### Desde internet:
Usas una URL para cargar la imagen directamente desde la web.

**Ejemplo:**
```html
<img src="https://via.placeholder.com/300" alt="Imagen de ejemplo">
```
Ideal para imágenes públicas disponibles en línea.

#### Desde un archivo local:
Usas una ruta relativa o absoluta para cargar una imagen desde tu computadora.

**Ejemplo:**
```html
<img src="imagenes/foto.jpg" alt="Mi foto">
```
La carpeta `imagenes` debe estar en la misma ubicación que tu archivo `.html`.

#### Combinando ambas formas:
Puedes usar ambas formas en el mismo documento, según tus necesidades.

## Comparativa de métodos de carga:

| Método           | Ventajas                                  | Desventajas                                     |
|-------------------|-------------------------------------------|------------------------------------------------|
| Imagen local      | Control total sobre la imagen.           | Requiere incluir el archivo al compartir el sitio. |
| Desde internet    | No necesitas almacenar la imagen localmente. | Puede no cargarse si la URL cambia o el servidor está caído. |

## Ejemplo práctico:

Aquí tienes un ejemplo que combina ambos tipos de imágenes y enlaces:

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo de Imágenes y Enlaces</title>
</head>
<body>
    <h1>Enlaces e Imágenes</h1>

    <!-- Enlace externo -->
    <a href="https://google.com" target="_blank">Visitar Google</a><br>

    <!-- Enlace interno -->
    <a href="pagina2.html">Ir a otra página</a><br>

    <!-- Ancla -->
    <a href="#seccion">Ir a la sección inferior</a><br>

    <!-- Imagen desde internet -->
    <h2>Imagen desde internet</h2>
    <img src="https://via.placeholder.com/150" alt="Imagen de ejemplo desde internet">

    <!-- Imagen local -->
    <h2>Imagen desde archivo local</h2>
    <img src="imagenes/mifoto.jpg" alt="Mi foto local">

    <!-- Sección destino del ancla -->
    <h2 id="seccion">Sección específica</h2>
    <p>Aquí llegaste gracias al ancla.</p>
</body>
</html>
```

## Usar el atributo title en la etiqueta `<img>`

El atributo `title` muestra un pequeño texto emergente (tooltip) cuando el ratón se posiciona sobre la imagen.

### Ejemplo:

```html
<img src="https://via.placeholder.com/150" alt="Ejemplo" title="Este es un tooltip al pasar el ratón">

