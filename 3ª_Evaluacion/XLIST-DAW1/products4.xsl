<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    
    <xsl:output method="xml" indent="yes"/>
    
    <!-- A barra fai referencia ao path -->
    <xsl:template match="/">
        <!-- Para crear un nodo -->
        <products>
            <xsl:apply-templates select="products/product"/>
        </products>
    </xsl:template>
    
    <xsl:template match="product" > <!-- Para que colla cada un deles temos que poñer un match, el resultado es Probando_noemi.xml -->
        <identification>
            <xsl:value-of select="name"/> 
        </identification>
    </xsl:template>
    
</xsl:stylesheet>

<!-- Este exemplo tiña a finalidade de crear un problema. si ejecutas esto tal cual  te devulve esto
     
     xsl:


     <xsl:template match="/">
     <products>
     <identification>
     <xsl:value-of select="products/product/name"/>

     
     </identification>
     </products>
     </xsl:template>
     
      xml:
     
     <?xml version="1.0" encoding="UTF-8"?>
     <products>
     <identification>T-shirt Pants Shoes</identification>
     </products>
     
     Non teñen cada un deles a súa identificación 
     
     
     Para solucionar este borma utilizamos plantillas 




    Para que cada uno sea independiente, cuando encuentra un producto 
                        Asii lo mete todos en una unico identificacion
                        <xsl:value-of select="products/product/name"/>

-->