<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/" >
    <html>  
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Albums</title>
        </head>
        <body>
            <main>
                <h2>Albums</h2>
                <xsl:apply-templates select="albums/album"/>
            </main>
        </body>
    </html>
    
    </xsl:template>

    <xsl:template match="album" >
        <section>
            <p><xsl:value-of select="title"/></p>
            <img src="{url}"> </img>
        </section>
    </xsl:template>

</xsl:stylesheet>