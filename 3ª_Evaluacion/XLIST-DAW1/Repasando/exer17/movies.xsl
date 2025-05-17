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
                    <xsl:apply-templates select="Movies/Movie">
                        <xsl:sort select="Year"/>
                    </xsl:apply-templates>
                </ol>
            </body>
        </html>   
        
        
    </xsl:template>

    
    <xsl:template match="Movie">
        <li>
            <xsl:value-of select="Title"/> - <xsl:value-of select="Year"/>
        </li>
    </xsl:template>
        
    
    
    
    
</xsl:stylesheet>