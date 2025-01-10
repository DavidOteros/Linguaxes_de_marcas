
# El problema de usar un ID numérico como id="1"

Usar un identificador (ID) como `id="1"` no es válido en HTML ni en CSS, ya que debe seguir ciertas reglas específicas. A continuación, se explica detalladamente:

## 1. Reglas para los IDs en HTML

- Los IDs son únicos dentro de un documento HTML.
- Los IDs deben comenzar con una letra (a-z o A-Z) o un guion bajo (`_`), no con un número.
- Los IDs pueden contener letras, números, guiones (`-`) y guiones bajos (`_`), pero **no pueden comenzar con un número**.

### Ejemplo Correcto:

```html
<div id="cuadrado1"></div>
```

### Ejemplo Incorrecto:

```html
<div id="1"></div>
```

## 2. Por qué no funciona `id="1"`

Aunque algunos navegadores modernos lo permiten, usar IDs que comienzan con números no es válido según el estándar HTML, y CSS no lo interpreta correctamente en muchos casos.

### Ejemplo del problema:

Si escribes esto:

```html
<div id="1"></div>
```

Y en tu CSS:

```css
#1 {
    width: 100px;
    height: 100px;
    background-color: red;
}
```

CSS interpreta el `#1` como un error, ya que un selector de ID no puede comenzar con un número.
