# Introducción a JSON  

JSON (JavaScript Object Notation) es un formato ligero de intercambio de datos. Se usa ampliamente en aplicaciones web y API porque es fácil de leer y escribir para los humanos, y fácil de procesar para las máquinas.  

---

## Estructura básica de JSON  

JSON se basa en pares clave-valor y estructuras de datos como objetos y arrays.  

### Ejemplo de JSON simple  
```json
{
  "nombre": "David",
  "edad": 25,
  "esEstudiante": true
}
```
Explicación:  
- `"nombre"` es una clave y `"David"` es su valor (string).  
- `"edad"` es una clave y `25` es su valor (número).  
- `"esEstudiante"` es una clave y `true` es su valor (booleano).  

---

## Tipos de datos en JSON  

| Tipo        | Ejemplo              |
|------------|----------------------|
| String  | `"nombre": "David"`  |
| Número  | `"edad": 25`         |
| Booleano | `"esEstudiante": true` |
| Array   | `"hobbies": ["música", "cine", "lectura"]` |
| Objeto  | `"direccion": { "calle": "Gran Vía", "ciudad": "Madrid" }` |
| Null    | `"telefono": null` |

---

## Objetos JSON  
Un objeto JSON es un conjunto de pares clave-valor, encerrado entre `{}`.  

Ejemplo:  
```json
{
  "nombre": "Ana",
  "edad": 30,
  "direccion": {
    "calle": "Avenida Siempre Viva",
    "ciudad": "Springfield"
  }
}
```
Explicación:  
- `"nombre"` y `"edad"` son valores simples.  
- `"direccion"` es otro objeto anidado dentro del JSON.  

---

## Arrays en JSON  
Los arrays en JSON se representan con `[]` y pueden contener múltiples valores.  

Ejemplo:  
```json
{
  "nombre": "Carlos",
  "hobbies": ["fútbol", "videojuegos", "fotografía"]
}
```
`"hobbies"` es un array que contiene tres strings.  

También pueden contener objetos:  
```json
{
  "empresa": "Tech Solutions",
  "empleados": [
    { "nombre": "Luis", "edad": 28 },
    { "nombre": "Sofía", "edad": 32 }
  ]
}
```
`"empleados"` es un array de objetos JSON.  

---

## Cómo usar JSON en la práctica  

### JSON en JavaScript
En JavaScript, JSON se puede convertir a un objeto y viceversa:  

```js
// Convertir JSON a un objeto de JavaScript
let jsonTexto = '{"nombre": "María", "edad": 22}';
let obj = JSON.parse(jsonTexto);
console.log(obj.nombre); // "María"

// Convertir un objeto de JavaScript a JSON
let persona = { nombre: "Pedro", edad: 35 };
let jsonString = JSON.stringify(persona);
console.log(jsonString); // '{"nombre":"Pedro","edad":35}'
```

---

## Reglas importantes en JSON  
- Las claves deben ir entre comillas dobles `"`.  
- Los valores pueden ser strings, números, booleanos, arrays, objetos o `null`.  
- No se pueden usar comas al final de listas o objetos.  

Ejemplo incorrecto:  
```json
{
  "nombre": "Elena",
  "edad": 27,
}  // Error: No debe haber coma después del último par clave-valor
```

---

## ¿Dónde se usa JSON?  
- Comunicación entre servidores y clientes web.  
- APIs y servicios web.  
- Configuración de aplicaciones (`config.json`).  
- Bases de datos NoSQL como MongoDB.  

---

JSON es un formato simple y flexible para almacenar y transmitir datos, usado en muchas tecnologías modernas. Es fundamental para el desarrollo web y el intercambio de información entre aplicaciones.