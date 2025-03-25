As expresions de xpaths poden ser absolutas o relativas, cando estamos en un proxecto o normal e que utilicemos rutas relativas 



Se poñemos unha /app, estaría seleccionando todo o documento, se queremos a etiqueta welcome message. /app/welcome-message


Se queremos eitquetas sen texto:
/app/welcome-message/text()



Se por exemplo tengo varios /app/description/subject, 

Podo usar // para ir directamente a subject `//subject`



O punto `.`, no sistema de archivos quere dicir onde estás agora mesmo

Co punto punto `..`, imos para o pai 


Existen predicados, 

Para coller os atributs usase @
