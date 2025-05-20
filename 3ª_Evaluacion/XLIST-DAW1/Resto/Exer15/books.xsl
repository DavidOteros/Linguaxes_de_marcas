<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>   
            <head>
                <meta charset="UTF-8"/>
                <title>Catalog</title>
            </head>
            <body>
                <main>
                    <ol>
                        <xsl:apply-templates select="/books/book"/>
                    </ol>
                </main>
            </body>
        </html>   
    </xsl:template>
    
    <xsl:template match="book">
        <xsl:if test="price &gt; 10">
            <li>
                <p>Title: <xsl:value-of select="title"/> </p>
                <p>Author: <xsl:value-of select="author"/>  </p>
                <p>Price: <xsl:value-of select="price"/>  </p>
            </li>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>
