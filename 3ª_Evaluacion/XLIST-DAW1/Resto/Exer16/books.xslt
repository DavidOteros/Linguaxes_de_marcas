<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    
    <xsl:template match="/">
        <html>   
            <head>
                <meta charset="UTF-8"/>
                <title>Catalog</title>
                <style> <!--Hacerlos aquí, y para cada color seleccionarlo como clase, si es el mas barato, pues .barato etc...  -->
                    tr{

                    }
                </style>
            </head>
            <body>
                <main>
                    <table border="1">
                        <caption>Number of rows: <xsl:value-of select="count(books/book)"/> </caption>
                        <tr>
                            <th>Author</th>
                            <th>Title</th>
                        </tr>
                        <xsl:apply-templates select="/books/book"/>
                        
                    </table>
                </main>
            </body>
        </html>   
    </xsl:template>
    

    <!-- Aprender a usar o choose, facer este exericico con choose -->
    <xsl:template match="book">
        <xsl:if test="price &lt;= 10">
            <tr>
                <td bgcolor="aquamarine"><xsl:value-of select="author"/></td>
                <td bgcolor="aquamarine" ><xsl:value-of select="title"/></td>
            </tr>   
        </xsl:if>
        <xsl:if test="price &gt; 10 and price &lt;=15">
            <tr>
                <td bgcolor="gold"><xsl:value-of select="author"/></td> 
                <td bgcolor="gold" ><xsl:value-of select="title"/></td>
            </tr>   
        </xsl:if>
                <xsl:if test="price &gt;15">
            <tr>
                <td bgcolor="crimson"><xsl:value-of select="author"/></td>
                <td bgcolor="crimson" ><xsl:value-of select="title"/></td>
            </tr>   
        </xsl:if>     
        
    </xsl:template>
    
    
</xsl:stylesheet>