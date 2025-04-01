<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    
    <xsl:output method="xml" indent="yes"/>

    <!-- A barra fai referencia ao path -->
    <xsl:template match="/">
        <!-- Para crear un nodo -->
        <products>
            <!-- Etitqueta xsl, que pone el valor de un elemento, y en select colocamos el xpath -->
            <identification>
                <xsl:value-of select="products/product[last()]/name"/>
            </identification>
        </products>
    </xsl:template>

    

</xsl:stylesheet>