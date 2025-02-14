# Apuntes XML

tag --> element 
attributes

## Como validar (repaso):
- XML é key sensitive
- Algo se se abre ten que pecharse <person> </person>(Esto tamén é válido se non vai haber texto ou outras etiquetas dentro <person/>)
- Todo ten que estar ven alineado
- Todo elemento xml ten que ter un "root" ou elemnto raíz
- Os atributos en XML ponse sempre como se fosen texto, tanto texto como valores númericos por exemplo age="22"


Dúas formas de validar que son:
- DTD (Document Type Definiton): Moitas cousas que de momento se validan así, aínda que a día de hoxe tratase xa de validar todo con XSD.
- XSD (XML Schema Definition)


Que significa: 
- Datos son correctos, ten os datos ven estructurados e en formato 


## Attlist -- Lista de atributos 

Cuando vemos ATTLIST, realmente la forma mas ortodoxa de hacerlo, es decir aquí creo una lsita de atributos, para un elemento concreto e dentro de ese book, definimos atributos. 

CDTA é un string, implied (opcional), FIXED (que sempre toma o mesmo valor)

ID, es un identificador único para un elemento particular que nunca puede repetirse, si pone ID siempre teneos que poner #REQUIRED

(yes|no), que solo puede tomar dos valores (chamase enumerado),  si paarece "yes" al lado quiere decir que ese es el valor por defecto. 

## Entidades de HTML
- &amp; --> &
- &lt; --> <
- &gt; -->  >
- &quot; --> "
- &apos; --> ' 

Estas entidades no hay que declaralas en xml, el resto ya si 

- &copy; --> Simbolo de copyright



Saber como se define y como funciona

<!EnTITY name "David Otero">

<persona>
    &name;

</persona>