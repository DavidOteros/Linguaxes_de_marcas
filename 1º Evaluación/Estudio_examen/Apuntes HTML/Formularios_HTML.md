
# Apuntes sobre Formularios en HTML

Los formularios en HTML son herramientas esenciales para recopilar datos del usuario, ya sea para iniciar sesión, realizar búsquedas, completar pedidos, o cualquier otra interacción con una página web.

## 1. Estructura básica

Un formulario se define usando la etiqueta `<form>`. Dentro de esta etiqueta se colocan los controles de entrada, como campos de texto, botones, listas desplegables, etc.

```html
<form action="URL" method="POST">
    <!-- Campos del formulario -->
</form>
```

### Atributos principales del `<form>`
- **action="URL"**: Define la dirección (URL) donde se enviarán los datos.
- **method="GET|POST"**:
  - **GET**: Los datos se envían en la URL. Útil para búsquedas o datos no sensibles.
  - **POST**: Los datos se envían en el cuerpo de la solicitud. Es más seguro y común para formularios.

## 2. Elementos principales de un formulario

| Etiqueta      | Propósito                                                                 |
|---------------|---------------------------------------------------------------------------|
| `<label>`     | Describe un campo de entrada. Se asocia al campo con el atributo `for`.   |
| `<input>`     | Crea un campo de entrada interactivo (texto, contraseña, botón, etc.).    |
| `<textarea>`  | Permite introducir texto largo.                                           |
| `<select>`    | Define una lista desplegable.                                             |
| `<button>`    | Crea un botón con texto o contenido personalizado (como imágenes).        |
| `<fieldset>`  | Agrupa elementos relacionados.                                            |
| `<legend>`    | Título para un `<fieldset>`.                                              |
| `<output>`    | Muestra el resultado de un cálculo o proceso.                             |

## 3. Tipos de campos (`<input>`)

El atributo `type` define el tipo de campo. Aquí están los más importantes:

| Tipo       | Propósito                                     |
|------------|-----------------------------------------------|
| text       | Campo de texto corto.                        |
| password   | Campo de texto oculto (contraseña).          |
| email      | Valida automáticamente una dirección de correo electrónico. |
| checkbox   | Crea casillas de verificación para múltiples opciones. |
| radio      | Crea botones de selección única.             |
| submit     | Botón para enviar el formulario.             |
| reset      | Botón para restablecer los valores del formulario. |
| file       | Campo para cargar archivos.                  |
| number     | Permite introducir números.                  |
| date       | Selector de fecha.                          |
| color      | Selector de color.                          |
| hidden     | Campo invisible para enviar datos no mostrados al usuario. |

## 4. Etiqueta `<label>` y su atributo `for`

La etiqueta `<label>` describe el propósito de un campo.  
El atributo `for` conecta el `<label>` con un campo mediante el atributo `id` del campo.

### Ejemplo:
```html
<label for="username">Nombre de usuario:</label>
<input type="text" id="username" name="username" required>
```

Nota: Hacer clic en el texto del `<label>` posiciona el cursor en el campo asociado.

## 5. Campos avanzados

### 5.1 Listas desplegables: `<select>`

Permiten al usuario seleccionar una opción de un conjunto predefinido.

```html
<label for="nivel">Nivel académico:</label>
<select id="nivel" name="nivel">
    <option value="primaria">Primaria</option>
    <option value="secundaria">Secundaria</option>
    <option value="universidad">Universidad</option>
</select>
```

**Atributos importantes:**
- **multiple**: Permite seleccionar varias opciones.
- **size**: Define cuántas filas se mostrarán inicialmente.

### 5.2 Áreas de texto: `<textarea>`

Para texto largo o comentarios.

```html
<label for="comentarios">Comentarios:</label>
<textarea id="comentarios" name="comentarios" rows="4" cols="40"></textarea>
```

### 5.3 Agrupación de campos: `<fieldset>` y `<legend>`

Sirve para agrupar elementos relacionados dentro de un formulario.

```html
<fieldset>
    <legend>Información personal</legend>
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre">
</fieldset>
```

## 6. Botones

### Tipos de botones (`<button>` y `<input type="button">`)
- `<input type="submit">`: Envia el formulario al servidor.
- `<input type="reset">`: Restablece todos los campos del formulario.
- `<button>`: Permite personalizar el contenido del botón.

### Ejemplo:
```html
<button type="submit">Enviar</button>
<button type="reset">Restablecer</button>
```

## 7. Validaciones

HTML permite realizar validaciones básicas de los campos antes de enviar el formulario:

| Atributo    | Propósito                                                    |
|-------------|--------------------------------------------------------------|
| required    | Hace que el campo sea obligatorio.                          |
| pattern     | Valida el campo con una expresión regular.                  |
| min y max   | Define valores mínimo y máximo para campos numéricos o fechas. |
| maxlength   | Establece el número máximo de caracteres permitidos.        |

### Ejemplo de validación:
```html
<input type="email" name="correo" required placeholder="correo@ejemplo.com">
<input type="number" name="edad" min="18" max="99">
```

## 8. Ejemplo completo
```html
<form action="/procesar" method="post">
    <fieldset>
        <legend>Formulario de registro</legend>
        
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        
        <label for="email">Correo:</label>
        <input type="email" id="email" name="correo" required>
        
        <label>Género:</label>
        <input type="radio" name="genero" value="masculino"> Masculino
        <input type="radio" name="genero" value="femenino"> Femenino
        <input type="radio" name="genero" value="otro" checked> Otro
        
        <label for="comentarios">Comentarios:</label>
        <textarea id="comentarios" name="comentarios" rows="4" cols="40"></textarea>
        
        <label for="nivel">Nivel académico:</label>
        <select id="nivel" name="nivel">
            <option value="primaria">Primaria</option>
            <option value="secundaria">Secundaria</option>
            <option value="universidad">Universidad</option>
        </select>
        
        <button type="submit">Enviar</button>
        <button type="reset">Limpiar</button>
    </fieldset>
</form>
```

## 9. Recomendaciones y problemas comunes

### Recomendaciones:
- Usa `name` en todos los campos para asegurarte de que los datos sean enviados al servidor.
- Utiliza `id` único en cada campo y conéctalo al `<label>` usando el atributo `for`.
- Aplica validaciones básicas (`required`, `pattern`, `min`, etc.) para evitar errores de entrada.

### Problemas comunes:
- **id duplicado**: Asegúrate de que cada `id` sea único.
- **Falta de name**: Si un campo no tiene `name`, sus datos no serán enviados al servidor.
- **Ausencia de validación**: Sin validaciones, el formulario puede aceptar datos incorrectos.

Con esto, tienes todo lo necesario para entender y trabajar con formularios en HTML. ¿Quieres practicar con un ejemplo más avanzado? 😊
