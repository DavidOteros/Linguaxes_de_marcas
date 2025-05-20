<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/" >
    <html>  
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>catalog-author-born-before1970</title>
        </head>
        <body>
            <ol>
                <xsl:apply-templates select="catalog/book/authors/author"/>
            </ol>
        </body>
    </html>
    
    </xsl:template>

    <xsl:template match="author" >
        <xsl:if test="@birthDate &lt;= 1977">
            <li><xsl:value-of select="text()"/></li>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>