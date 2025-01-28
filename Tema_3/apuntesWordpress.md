1. Abrir ubuntu
1. Pegar esto no google chrome - 192.168.56.101
1. Logo entras no wordpress e saeche este dominio:
    https://student-domain/ e tes que engadirlle /wp-admin
1. Usuario "wp-user" e contrasinal "wp-user"



## URL de cando temos os permalink chulos:

https://student-domain/wp-json/wp/v2/posts

Senon poñemos permalink, esta url para conectarse con servizo web non van funcionar. 

Esta é a ruta cando non temos os permalink chulos 
https://student-domain/?rest_route=/wp/v2/posts/

Os permalinks chulos, ponse en settings, permalinks, e seleccionamos "Post name"


## Comandos http - CRUD:

- get - select
- put - update (Non se usa, usase post para modificar almenos en wordpress)
- post - create
- delete - delete



https://api.slingacademy.com/v1/sample-data/blog-posts/1


https://student-domain/wp-json/wp/v2/users

JSON API - 7VL1 KxSO x0aj 7Dkd Jmuh Ijpe


Creación de usuario en post é sempre autentificada


Para crear, vamos a post, logo a body e logo form-data, temos que poñer os mínimos requerimientos

![](/Recursos/Captura%20creacion%20usuario%20postman.jpg)


Revisar diferencia entre http y https, y revisar taxonomy


As categorías son temáticas sobre algo, por exemplo, política, deportes etc..

En autthorization es para autorizar xd, y parametros es donde das tu los parámetros, alguns son obrigatorios e outros non. 


"count" ven a ser números de post, y "taxonomy", ven a ser como unha jerarquía.

17/01/2025 --> De momento vimos, crear tags, crear categorias, delete aún no, y ahora vamos a subir una imágen. Usando en todo momento "Params"


## Para subir cosas

Sempre nos colocamos en Body, e logo podemos usar 'Formdata' ou 'RAW' que vai en formato JSON

## Imaxes

'https://student-domain/wp-json/wp/v2/media/'

Para subir imaxes, en modo "POST"

Se subes unha imaxe sen "content disposition", da un error. Hay que poñer un content disposition no header. 

No header poñemos:

Key: Content-Disposition
Value: attachment;filename="WP-1-cms.pdf" , entre as comillas o nome do arquivo pra subir.



## El Audio se pone con el html, pero las imagenes con media hay que ponerlas y el link del vídeo tiene que ir tb a través del html 


## Cambiar 404 page error

Se debe de hacer en, Appearance --> Editor --> Templates --> Page:404


## Para subir página web 

Post - https://student-domain/wp-json/wp/v2/pages

name - O nome 
content - O xml

## EX3. Convertir en columnas y poner en 50/50

Primero seleccionamos en título de la columna, y le damos al boton de guardar de instagram y le das a column, despues coges el bloque de texto de abajo y lo arrastras encima y ya lo pones en formato columna, lo mismo con una imagen o lo que sea

Hacemos lo mismo para la otra columna. 

Y luego creas una columna, de 50/50 y dentro de ellas metes las otras 2 columnas 
