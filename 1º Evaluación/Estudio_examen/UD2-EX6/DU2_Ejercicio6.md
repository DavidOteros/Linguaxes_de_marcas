
# DU2 - Ejercicio 6: Resumen, Problemas y Apuntes

## Resumen del ejercicio

En este ejercicio se trabajó en un diseño que incluye:

- Un **header** con una torre estructurada dentro de un **section** y un texto "Tower 2".
- Un **main** con una imagen de fondo.
- Un **footer** ajustado al final de la página.

Se resolvieron problemas relacionados con:

- Alineación y distribución de elementos usando **flexbox**.
- Posicionamiento de elementos con **position**.
- Manejo de imágenes de fondo.
- Evitar espacios indeseados dentro del diseño.

## Problemas encontrados y cómo solucionarlos

### 1. Texto dentro del header que no se centraba

**Problema:** El texto "Tower 2" no se centraba verticalmente dentro del header.  
**Solución:**
- Usar `justify-content` y `align-items` con flexbox para centrar todos los elementos.
- Para mover solo el texto sin afectar otros elementos, usar `position: absolute` y apartir de ahi valerme de `top`, `bottom`, `left`, `right`. Aquí puedo hacer uso de `%`o de `px`para mover el texto/objeto deseado.



### 2. Espacios no deseados entre header, main y footer

**Problema:** Había espacios adicionales debido a márgenes por defecto o elementos escalados.  
**Solución:**
- Usar `margin: 0` en el body para eliminar los márgenes predeterminados.
- Ajustar los márgenes manualmente con valores negativos si es necesario.

### 3. El background-image del main cubría el color del footer

**Problema:** La imagen de fondo del main sobresalía hacia el footer, ocultando el color del mismo.  
**Solución:**
- Asegurarse de definir un `height` suficiente para el main.
- Aplicar un color de fondo específico al footer para asegurarse de que se vea correctamente.

### 4. Uso incorrecto de width: 100vw

**Problema:** Aplicar `width: 100vw` generaba un espacio horizontal no deseado debido a las barras de desplazamiento.  
**Solución:**
- Cambiar `width: 100vw` por `width: 100%`, que se adapta mejor al tamaño disponible.

### 5. Nombres inválidos en id

**Problema:** Usar nombres de id que comenzaban con números (e.g., `id="1"`) no es válido en HTML/CSS.  
**Solución:**
- Usar nombres descriptivos que comiencen con letras, como `id="one"`.

### 6. Los `h1`... `p` no dejan de ser textos con un formato predeterminado.
- Simplemente son formatos de texto que tienen una forma dada, pero yo puedo cambiarlo, por ejemplo quitar ese `margin`que a veces puede ser tan puñetero.

## Tips para evitar errores futuros

### Nombres válidos para id y class:
- Usa nombres descriptivos y válidos que comiencen con letras.
- Evita caracteres especiales y números al inicio.

### Manejo de flexbox:
- Usa `justify-content` para alinear horizontalmente y `align-items` para alinear verticalmente.
- Asegúrate de definir el tamaño del contenedor (`width` y `height`) para que el contenido se alinee correctamente.

### Evita el uso excesivo de vw y vh:
- Usa `width: 100%` y `height: auto` para evitar problemas de desplazamiento.

### Imágenes de fondo y contenedores:
- Define siempre el `height` del contenedor donde uses `background-image` para evitar que este se desborde.
- Usa `background-size`, `background-repeat` y `background-position` para controlar mejor cómo se muestra la imagen.

### Debugging visual:
- Usa bordes temporales (`border: 1px solid red`) en los contenedores para identificar problemas de alineación o tamaños incorrectos.

## Repaso de los elementos utilizados en el ejercicio

### 1. Propiedades de diseño generales
- **margin** y **padding**: Ajustaron espacios internos y externos de los elementos.
- **width** y **height**: Definieron tamaños explícitos para los contenedores.
- **background-color** y **background-image**: Aplicaron colores y texturas a los contenedores.

### 2. Alineación de elementos
- **display: flex**:
  - Usado en el header para organizar elementos horizontalmente.
  - `justify-content: center` y `align-items: center` centraron los elementos tanto horizontal como verticalmente.
- **position**:
  - `relative`: Usado para elementos base que necesitaban relación con sus hijos.
  - `absolute`: Posicionó los elementos de la torre dentro del section.
  - `fixed`: Mantuvo el header fijo al desplazarse por la página.

### 3. Manejo del texto
- **text-align**:
  - Usado para alinear texto dentro de contenedores.
  - Complementado con flexbox para alinear elementos más complejos.
- **font-family**, **font-size** y **font-weight**:
  - Ajustaron la apariencia y el peso del texto para una experiencia visual coherente.

### 4. Otros ajustes importantes
- **overflow: hidden**:
  - Usado para ocultar contenido que se desbordaba del main o el body.
- **z-index**:
  - Usado para asegurarse de que ciertos elementos, como el header, estuvieran por encima de otros.

## Conclusión

Este ejercicio ayudó a consolidar conceptos clave como el uso de **flexbox**, manejo de imágenes de fondo, posicionamiento absoluto y fijo, y alineación de texto. Con estas herramientas, se logró un diseño funcional y visualmente organizado, superando problemas comunes relacionados con márgenes, escalado y alineación.
