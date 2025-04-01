<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    
    <!-- Cambiamos mehtor por html, para coller a páxina -->
    <xsl:output method="html" indent="yes"/>

    <!-- Saxo o que fai e recorrer o documento ata encontrar un match, e segun o que lle vamos dicido este vaise movendo
    
    Se quero crear unha paxina web necesito crear estaa estructura
     -->
    <xsl:template match="/">
        <!-- O html -->
        <html>
            <head>
                <title>Products</title>
            </head>
            <body>
                <p><xsl:value-of select="products/product[last()]/name"/></p>
            </body>

        </html>
    </xsl:template>

    

</xsl:stylesheet>