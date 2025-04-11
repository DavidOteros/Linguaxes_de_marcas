<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>   
            <head>
                <title> Catalog</title>
            </head>
            <body>
                <h1>Books by Authors Born Before 1970</h1>
                <ol>
                    <!-- Aquí si que se pone la ruta -->
                    <xsl:apply-templates select="//book"/>     
                </ol>
                
            </body>
            
            
        </html>   
        
        
    </xsl:template>
    <!-- Este exercicio tamén se pode facer sin ruta, é dicir sin if, revisar como se fai para entender como funciona -->

    <!-- Vai ca etiqueta, non ca ruta -->
    <xsl:template match="book">
        <xsl:if test="authors/author/@birthDate &lt; 1970">
            <li><xsl:value-of select="title"/></li>
        </xsl:if>
    </xsl:template>         
    
    
</xsl:stylesheet>