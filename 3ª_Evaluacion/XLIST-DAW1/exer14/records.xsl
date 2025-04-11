<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>   
            <head>
                <title> Catalog</title>
            </head>
            <header>
                <h1>Número de libros: <xsl:value-of select="count(//record[city='Glasgow' and date/year='1790'])"/></h1>
            </header>
            <body>
                
                <p></p>
            </body>
            
            
        </html>   
        
        
    </xsl:template>
    
    <xsl:template match="record">
        <xsl:if test="city='Glasgow' and date/year=1790">
            <section>
                <p> Podemos usar id ou firts:child, probar loas dos </p>
                <p></p>
                <p></p>
            </section>           
        </xsl:if>        
    </xsl:template>
    
    
    
    
    
</xsl:stylesheet>