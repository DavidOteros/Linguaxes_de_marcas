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
                <ul>
                    <xsl:apply-templates select="root/record"/>
                </ul>
            </body>
            
        </html>
    </xsl:template>
    
    <xsl:template match="record">
        <ul>
            <li> Código: <xsl:value-of select="id"/></li>
            <li> Titulo: <xsl:value-of select="title"/></li>
            <li> Fecha: <xsl:value-of select="date/@when"/></li>
        </ul>
        
    </xsl:template>
    
    
</xsl:stylesheet>