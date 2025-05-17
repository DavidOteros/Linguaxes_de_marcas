<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html"/>
    
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Libros</title>
            </head>

            <body>
                <ol>
                    <xsl:apply-templates select="catalog/book"/>
                </ol>
            </body>
            
        </html>
    </xsl:template>
    
    <xsl:template match="book">
        <xsl:if test="authors/author/@birthDate &lt; 1970">
            <li><xsl:value-of select="title"/></li>
        </xsl:if>
        
    </xsl:template>
    
    
</xsl:stylesheet>