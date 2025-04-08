<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    
    <xsl:output method="html" indent="yes"/>
    
    <!-- Falta poñer a declaracion de estilos -->

    <xsl:template match="/">
        <html>
            <head>
                <title>Albums</title>
            </head>
            <body>
                <h1>Album</h1>
                <xsl:apply-templates select="albums/album"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="album">

        <article>
            

        </article>

        <xsl:element name="article">
            <xsl:element name="h2">
                <xsl:value-of select="title"/>
            </xsl:element>
            <xsl:element name="img">
                <xsl:attribute name="src">
                    <xsl:value-of select="url"/>
                </xsl:attribute>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>


