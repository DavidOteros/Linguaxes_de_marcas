## XSD

. --> calquera caracter

\d --> cualquier digito

\D --> calquera non dixito

\s --> calquera espazo en branco

\S --> calquera cousa que non sexa un espazo en branco

? --> o una o nunca (Siempre coge lo que tiene antes, si necesitas separar algo lo metes entre parénteis NN(S)?, así cogería solo la "S")

+ --> uno o mas 

\w --> Mirar que inclue concretamente

grupos:

(x|y) --> aparecer uno u otro
{x,y} --> rangos 
x{n} --> Un numero de veces en una row

x{n,m} --> Al menos un numero n de veces pero no mas de m(m incluida) 
 
 
caracteres que aparezca en la expresion regular, por ejemplo un parentesis, una llave, un corchete, todos eses hay que escaparlos es decir que deje de tener significado típico de la expresión regular y utilizarlo como carácter.  Para escaparlo ponemos delante "\"

tipos simples y tipos complexos:

Diferenza entre elementos simples, e elemntos complexos:

Os tipos simples solo teñen "nome e tipo", un elemento baleiro tamén é un complexo, e revisar na casa as diferenzas para saber cal utilizar