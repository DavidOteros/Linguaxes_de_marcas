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
                <header>
                    <h1><xsl:value-of select="count(Movies/Movie)"/></h1>
                </header>
                <main>
                    <ol>
                        <xsl:apply-templates select="Movies/Movie">
                            <xsl:sort select="Year" order="ascending"/>
                        </xsl:apply-templates>
                    </ol>
                </main>
            </body>
        </html>
        
    </xsl:template>
    <xsl:template match="Movie">
        <li><xsl:value-of select="Title"/> - <xsl:value-of select="Year"/></li>
    </xsl:template>
    
    
    
</xsl:stylesheet>