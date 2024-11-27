
# Apuntes: UD-EX7

## 1. Personalización de Enlaces y Estados

Los enlaces (`<a>`) son interactivos y se pueden personalizar en diferentes estados con las pseudo-clases `:link`, `:visited`, `:hover` y `:active`.

### Ejemplo de Código Completo

```css
a:link {
    color: blue; /* Color inicial para enlaces no visitados */
    text-decoration: none; /* Eliminar subrayado */
}

a:visited {
    color: crimson; /* Cambia el color una vez visitado */
}

a:hover {
    color: gold; /* Cambia el color al pasar el cursor */
    text-decoration: underline; /* Añade subrayado */
}

a:active {
    color: forestgreen; /* Color mientras se hace clic */
}
```

## 2. Tips sobre Enlaces

- **Orden Correcto de las Pseudo-Clases:** Siempre organiza las reglas de los enlaces de esta manera:
  - `a:link` → `a:visited` → `a:hover` → `a:active`.
- **Desactivar Subrayado:** Usa `text-decoration: none;` para eliminar el subrayado en los estados link y visited.
- **Añadir Subrayado en Hover:** Hacer que el subrayado solo aparezca cuando el cursor está sobre el enlace mejora la experiencia del usuario.
- **Evitar Conflictos:** Si los estilos no se aplican correctamente, revisa que no tengas reglas repetidas o en el orden incorrecto.

## 3. Ajuste de Imágenes de Fondo

### Requisitos:

- La imagen debe ocupar todo el contenedor.
- No debe repetirse si el tamaño de la pantalla cambia.
- La imagen debe ajustarse proporcionalmente.

### Ejemplo CSS para Ajustar un Background

```css
header {
    background-image: url(./animals-resources/banner1.png);
    background-size: cover; /* Cubre todo el contenedor */
    background-position: center; /* Centra la imagen en el contenedor */
    background-repeat: no-repeat; /* Evita que se repita */
    height: 50vh; /* Altura del contenedor */
    width: 100%; /* Ancho completo */
    margin: 0;
    padding: 0;
}
```

### Explicación de las Propiedades:

- **`background-size: cover;`**
  - La imagen ocupa todo el contenedor, adaptándose proporcionalmente.
  - Se recortará si el contenedor tiene proporciones distintas a la imagen.

- **`background-position: center;`**
  - La imagen se centra dentro del contenedor.

- **`background-repeat: no-repeat;`**
  - Evita que la imagen se repita.

### Ventajas de este Enfoque:

- El diseño es responsivo.
- La imagen no se distorsiona.

## 4. Problemas Comunes y Soluciones

- **Problema 1:** "La imagen de fondo no se ajusta al tamaño del contenedor."  
  **Causa:** Falta `background-size: cover` o `contain`.  
  **Solución:** Agrega `background-size: cover` para cubrir el contenedor.

- **Problema 2:** "La imagen de fondo se repite."  
  **Causa:** No se ha definido `background-repeat: no-repeat`.  
  **Solución:** Asegúrate de incluir esta propiedad.

## 5. Tips para CSS Responsivo

- **Usar Unidades Relativas:**
  - Alturas y anchos en `vh`, `vw` o `%` aseguran que el diseño sea responsivo.

- **Combinar Flexbox con Imágenes:**
  - Usa `display: flex` en el contenedor si necesitas centrar elementos junto con imágenes de fondo.

- **Asegurar Compatibilidad:**
  - Revisa las dimensiones de las imágenes para que tengan suficiente calidad sin sobrecargar la página.
