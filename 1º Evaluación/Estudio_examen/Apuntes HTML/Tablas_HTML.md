
# Tablas en HTML

Las tablas en HTML son estructuras diseñadas para mostrar información en formato tabular, con filas y columnas. A continuación, te explico formas de uso y puntos importantes a tener en cuenta.

---

## 1. Estructura básica

| **Etiqueta** | **Propósito**                                |
|--------------|----------------------------------------------|
| `<table>`    | Contiene toda la tabla.                      |
| `caption`    | Proporciona un título descriptivo para la tabla.|
| `<tr>`       | Define una fila (table row).                 |
| `<th>`       | Define una celda de encabezado (table header). Se centra y pone en negrita por defecto. |
| `<td>`       | Define una celda normal (table data).        |

### Ejemplo básico:

```html
<table border="1">
    <tr>
        <th>Nombre</th>
        <th>Edad</th>
        <th>Ciudad</th>
    </tr>
    <tr>
        <td>Ana</td>
        <td>25</td>
        <td>Madrid</td>
    </tr>
</table>
```

---

## 2. División en secciones

HTML permite dividir una tabla en tres secciones para organizarla mejor:

| **Sección**  | **Etiqueta** | **Propósito**                      |
|--------------|--------------|-------------------------------------|
| Encabezado   | `<thead>`    | Contiene los títulos de las columnas. |
| Cuerpo       | `<tbody>`    | Contiene los datos principales.    |
| Pie          | `<tfoot>`    | Contiene información resumen o totales. |

### Ejemplo:

```html
<table border="1">
    <thead>
        <tr>
            <th>Producto</th>
            <th>Precio</th>
            <th>Cantidad</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Manzanas</td>
            <td>1.50€</td>
            <td>10</td>
        </tr>
        <tr>
            <td>Plátanos</td>
            <td>0.80€</td>
            <td>7</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="2">Total</td>
            <td>25.40€</td>
        </tr>
    </tfoot>
</table>
```

**Nota:** Estas etiquetas son opcionales, pero mejoran la organización y semántica de tu tabla.

---

## 3. Atributos importantes

| **Atributo** | **Uso**                                | **Ejemplo**                     |
|--------------|----------------------------------------|---------------------------------|
| `border`     | Añade bordes a la tabla.               | `<table border="1">`           |
| `colspan`    | Hace que una celda abarque varias columnas. | `<td colspan="2">Total</td>`   |
| `rowspan`    | Hace que una celda abarque varias filas.    | `<td rowspan="2">Comida</td>`  |
| `style`      | Permite personalizar ancho, alto, colores. | `<td style="width: 100px;">Celda</td>` |

### Ejemplo de `colspan` y `rowspan`:

```html
<table border="1">
    <tr>
        <th rowspan="2">Producto</th>
        <th colspan="2">Detalles</th>
    </tr>
    <tr>
        <th>Precio</th>
        <th>Cantidad</th>
    </tr>
    <tr>
        <td>Manzanas</td>
        <td>1.50€</td>
        <td>10</td>
    </tr>
</table>
```

---

## 4. Buenas prácticas al usar tablas

- **Usa `<caption>` para describir el propósito de la tabla:**
    Esto es útil para accesibilidad y semántica.

- **Mantén coherencia en las columnas:**  
  Todas las filas deben tener el mismo número de columnas, ya sea directamente (`<td>`) o con atributos como `colspan` o `rowspan`.

- **Utiliza `<th>` para encabezados:**  
  Usa `<th>` para títulos de columnas o filas, ya que ayuda a los lectores de pantalla y motores de búsqueda.

- **División en secciones (`<thead>`, `<tbody>`, `<tfoot>`):**  
  Úsalas para mejorar la semántica y la organización, especialmente en tablas largas.

- **Usa atributos descriptivos para celdas combinadas:**  
  Usa `colspan` o `rowspan` solo cuando sea necesario, y asegúrate de que las combinaciones no rompan la alineación.

- **Alineación y diseño con CSS:**  
  Personaliza el diseño con CSS para mejorar la estética y funcionalidad. Por ejemplo, colores, bordes o espaciados.

---

## 5. Uso avanzado: Estilización con CSS

Para un diseño más profesional, utiliza CSS.  

### Ejemplo básico:

```html
<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f4f4f4;
        font-weight: bold;
    }
</style>

<table>
    <thead>
        <tr>
            <th>Producto</th>
            <th>Precio</th>
            <th>Cantidad</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Manzanas</td>
            <td>1.50€</td>
            <td>10</td>
        </tr>
        <tr>
            <td>Plátanos</td>
            <td>0.80€</td>
            <td>7</td>
        </tr>
    </tbody>
</table>
```

**Resultado mejorado visualmente:**
- Encabezados con fondo claro.
- Bordes más uniformes.

---

## 6. Errores comunes

- **Texto fuera de celdas válidas:**  
  Todo el contenido debe estar dentro de `<th>` o `<td>`.

**Incorrecto:**
```html
<thead> Título fuera de etiquetas
```

**Correcto:**
```html
<thead>
    <tr>
        <th colspan="3">Título</th>
    </tr>
</thead>
```

- **Falta de coherencia en el número de columnas:**  
  Todas las filas deben respetar el mismo número de columnas.

- **Uso excesivo de estilos inline:**  
  Es mejor centralizar el diseño en una hoja de estilos.

---

## Resumen: Lo esencial

- Usa `<thead>`, `<tbody>`, `<tfoot>` para tablas organizadas.
- Personaliza celdas combinadas con `colspan` y `rowspan`.
- Mantén el diseño consistente con CSS.
- Respeta la semántica HTML usando `<th>` para encabezados y celdas válidas.
