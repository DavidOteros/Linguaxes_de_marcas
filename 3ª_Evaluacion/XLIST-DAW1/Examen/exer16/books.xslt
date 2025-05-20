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
                <table border="2">
                    <caption><xsl:value-of select="count(books/book)"/></caption>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                    </tr>
                    <xsl:apply-templates select="books/book"/>
                    
                </table>
            </body>
        </html>
        
    </xsl:template>
    <xsl:template match="book">
        <xsl:choose>
            <xsl:when test="price &lt;= 10">
                <tr class="aquamarine">
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="price"/></td>
                </tr>
            </xsl:when>
            <xsl:when test="price &gt; 10 and price &lt;= 15">
                <tr class="gold">
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="price"/></td>
                </tr>
            </xsl:when>
            <xsl:otherwise>
                <tr class="crimson">
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="price"/></td>
                </tr>  
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    
</xsl:stylesheet>