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
                <header>
                    <h1>Número de libros: 
                        <xsl:value-of select="count(/root/record[city='Glasgow' and date/year='1790'])"/> 
                    </h1>
                </header>
                <main>
                    <xsl:apply-templates select="/root/record"/>
                </main>
            </body>
        </html>   
    </xsl:template>

    <xsl:template match="record">
        <xsl:if test="city='Glasgow' and date/year='1790'">
            <section>
                <p>ID: [<xsl:value-of select="id"/>]</p>
                <p>City: <xsl:value-of select="city"/></p>
                <p><xsl:value-of select="text/p[1]"/></p>
            </section>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
