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
            <h1>Numero libros: <xsl:value-of select="count(root/record)"/></h1>
            <xsl:apply-templates select="root/record"/>
        </body>
    </html>
    
</xsl:template>
    <xsl:template match="record">
        <article>
            <p>[<xsl:value-of select="id"/>]</p>
            <p><xsl:value-of select="city"/></p>
            <p><xsl:value-of select="text/p[1]"/></p>
        </article>
    </xsl:template>



</xsl:stylesheet>