<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>   
            <head>
                <title> Catalog</title>
            </head>
            <header>
                <h1>Número de películas: <xsl:value-of select="count(/Movies/Movie)"/></h1>
            </header>
            <body>
                <ol>
                    <xsl:apply-templates select="Movies"/>
                    <!-- Se puede hacer el sprt aqui también y no en el template, aprender a hacerlo así  -->
                </ol>
            </body>
        </html>   
        
        
    </xsl:template>

    <!-- Aprender a hacer con apply template y con for-each -->
    
    <xsl:template match="Movies">
        <xsl:for-each select="Movie">
            <xsl:sort select="Year"/>
            <li>
                <xsl:value-of select="Title"/> - <xsl:value-of select="Year"/>
            </li>
        </xsl:for-each>  
    </xsl:template>
    
    
    
    
    
</xsl:stylesheet>