<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/" >
    <html>  
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Books</title>
        </head>
        <body>
            <ol>
                <xsl:apply-templates select="books/book">
                    <xsl:sort select="title"/>
                </xsl:apply-templates>
                
            </ol>
        </body>
    </html>
    
</xsl:template>
    <xsl:template match="book">
        <xsl:if test="price &gt; 10">
            <li>
                <ul>
                    <li>Título: <xsl:value-of select="title"/></li>
                    <li>Autor: <xsl:value-of select="author"/></li>
                    <li>Precio: <xsl:value-of select="price"/></li>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>



</xsl:stylesheet>