
# Favicon en HTML

## ¿Qué es un favicon?

El favicon es un pequeño icono asociado a una página web que aparece en:
- La pestaña del navegador, junto al título de la página.
- Marcadores o favoritos cuando guardas la página.
- Barras de herramientas o accesos directos en navegadores.

Un favicon es una forma visual de identificar rápidamente tu sitio web.

---

## Cómo añadir un favicon a tu página web

### Paso 1: Crear el archivo del favicon

El favicon puede ser una imagen en varios formatos, pero los más comunes son:
- `.ico`: El formato estándar para favicons (compatibilidad universal).
- `.png`, `.jpg`, o `.svg`: Otros formatos aceptados por navegadores modernos.

**El tamaño recomendado es:**
- **32x32 píxeles:** Tamaño estándar actual.
- **16x16 píxeles:** Tamaño antiguo pero aún funcional.

**Herramientas para crear un favicon:**
- [favicon.io](https://favicon.io)
- [Real Favicon Generator](https://realfavicongenerator.net)

---

### Paso 2: Guardar el archivo en tu proyecto

- Si usas el formato `.ico`, guárdalo como `favicon.ico` en la raíz de tu proyecto.
- Si usas otro formato, guárdalo en una carpeta como `img/` y asegúrate de especificar la ruta en el código HTML.

---

### Paso 3: Añadir el favicon en tu HTML

Dentro de la etiqueta `<head>`, utiliza el siguiente código para enlazar el favicon:

Haciendo uso de ***emmet abbreviation***:
`link:favicon`

```html
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
```

- `<link rel="icon">`: Indica que este archivo es el favicon.
- `href="img/favicon.ico"`: Ruta al archivo del favicon.
- `type="image/x-icon"`: MIME estándar para favicons en formato `.ico`.

---

### Ejemplo completo

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página con Favicon</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
</head>
<body>
    <h1>Bienvenido a mi página</h1>
    <p>Esta página tiene un favicon en la pestaña del navegador.</p>
</body>
</html>
```

---

## MIME del favicon

El **MIME** (Multipurpose Internet Mail Extensions) especifica el tipo de archivo que el navegador debe interpretar como favicon. Estos son los más comunes:

| **Formato** | **Extensión** | **MIME**         |
|-------------|---------------|------------------|
| Icono       | `.ico`        | `image/x-icon`   |
| PNG         | `.png`        | `image/png`      |
| JPG/JPEG    | `.jpg`, `.jpeg`| `image/jpeg`     |
| SVG         | `.svg`        | `image/svg+xml`  |

---

## Uso de varios formatos de favicon

Para asegurar compatibilidad con diferentes navegadores y dispositivos, puedes incluir varios formatos:

```html
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.png" type="image/png">
<link rel="apple-touch-icon" href="img/favicon-apple.png">
```

- `<link rel="icon">`: Favicon estándar.
- `<link rel="apple-touch-icon">`: Favicon optimizado para dispositivos Apple.

---

## ¿Cómo verificar si el favicon funciona?

1. Guarda los cambios en tu archivo HTML.
2. Abre tu página en un navegador.
3. Comprueba si el favicon aparece en la pestaña. Si no aparece:
   - Asegúrate de que la ruta en `href` es correcta.
   - Limpia la caché del navegador (Ctrl + Shift + R o equivalente).

---

## Herramientas para crear favicons

- [favicon.io](https://favicon.io): Generador rápido y sencillo de favicons.
- [Real Favicon Generator](https://realfavicongenerator.net): Crea favicons para diferentes dispositivos y navegadores.

---

## Errores comunes

- **No especificar la ruta correcta:**  
  Si el archivo no está en la raíz del proyecto, asegúrate de usar la ruta completa en `href`.

- **Usar un tamaño incorrecto:**  
  Favicons demasiado grandes o con proporciones incorrectas pueden no mostrarse correctamente.

- **No usar formato compatible:**  
  Usa `.ico` para máxima compatibilidad, o especifica el MIME correcto para otros formatos.

---

## Conclusión

El favicon es un pequeño detalle que mejora la apariencia profesional de tu sitio web. Siguiendo estos pasos, puedes agregar uno fácilmente y asegurarte de que funcione en todos los navegadores y dispositivos.
